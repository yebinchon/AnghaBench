
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int set_data_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int IS_QLA27XX (struct qla_hw_data*) ;
 int IS_QLA28XX (struct qla_hw_data*) ;
 int PORT_SPEED_16GB ;
 int PORT_SPEED_32GB ;
 int PORT_SPEED_4GB ;
 int PORT_SPEED_8GB ;
 void* PORT_SPEED_AUTO ;
 int QLA_SET_DATA_RATE_LR ;
 int QLA_SET_DATA_RATE_NOLR ;
 int QLA_SUCCESS ;
 int dev_to_shost (struct device*) ;
 int kstrtol (char const*,int,int*) ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*) ;
 int ql_dbg_user ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 scalar_t__ qla2x00_chip_is_down (struct scsi_qla_host*) ;
 int qla2x00_set_data_rate (struct scsi_qla_host*,int) ;
 struct scsi_qla_host* shost_priv (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
qla2x00_port_speed_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct scsi_qla_host *vha = shost_priv(dev_to_shost(dev));
 ulong type, speed;
 int oldspeed, rval;
 int mode = QLA_SET_DATA_RATE_LR;
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA27XX(ha) && !IS_QLA28XX(ha)) {
  ql_log(ql_log_warn, vha, 0x70d8,
      "Speed setting not supported \n");
  return -EINVAL;
 }

 rval = kstrtol(buf, 10, &type);
 if (rval)
  return rval;
 speed = type;
 if (type == 40 || type == 80 || type == 160 ||
     type == 320) {
  ql_dbg(ql_dbg_user, vha, 0x70d9,
      "Setting will be affected after a loss of sync\n");
  type = type/10;
  mode = QLA_SET_DATA_RATE_NOLR;
 }

 oldspeed = ha->set_data_rate;

 switch (type) {
 case 0:
  ha->set_data_rate = PORT_SPEED_AUTO;
  break;
 case 4:
  ha->set_data_rate = PORT_SPEED_4GB;
  break;
 case 8:
  ha->set_data_rate = PORT_SPEED_8GB;
  break;
 case 16:
  ha->set_data_rate = PORT_SPEED_16GB;
  break;
 case 32:
  ha->set_data_rate = PORT_SPEED_32GB;
  break;
 default:
  ql_log(ql_log_warn, vha, 0x1199,
      "Unrecognized speed setting:%lx. Setting Autoneg\n",
      speed);
  ha->set_data_rate = PORT_SPEED_AUTO;
 }

 if (qla2x00_chip_is_down(vha) || (oldspeed == ha->set_data_rate))
  return -EINVAL;

 ql_log(ql_log_info, vha, 0x70da,
     "Setting speed to %lx Gbps \n", type);

 rval = qla2x00_set_data_rate(vha, mode);
 if (rval != QLA_SUCCESS)
  return -EIO;

 return strlen(buf);
}
