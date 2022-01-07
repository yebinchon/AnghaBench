
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct qla_hw_data {int optrom_mutex; TYPE_1__* isp_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_8__ {int (* beacon_on ) (TYPE_2__*) ;int (* beacon_off ) (TYPE_2__*) ;} ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t EPERM ;
 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int class_to_shost (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla2x00_chip_is_down (TYPE_2__*) ;
 TYPE_2__* shost_priv (int ) ;
 int sscanf (char const*,char*,int*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

__attribute__((used)) static ssize_t
qla2x00_beacon_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 int val = 0;
 int rval;

 if (IS_QLA2100(ha) || IS_QLA2200(ha))
  return -EPERM;

 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;

 mutex_lock(&vha->hw->optrom_mutex);
 if (qla2x00_chip_is_down(vha)) {
  mutex_unlock(&vha->hw->optrom_mutex);
  ql_log(ql_log_warn, vha, 0x707a,
      "Abort ISP active -- ignoring beacon request.\n");
  return -EBUSY;
 }

 if (val)
  rval = ha->isp_ops->beacon_on(vha);
 else
  rval = ha->isp_ops->beacon_off(vha);

 if (rval != QLA_SUCCESS)
  count = 0;

 mutex_unlock(&vha->hw->optrom_mutex);

 return count;
}
