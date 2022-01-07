
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int idc_audit_ts; int const portnum; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;




 int QLA83XX_IDC_AUDIT ;
 int jiffies ;
 int jiffies_to_msecs (int) ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 int qla83xx_wr_reg (TYPE_1__*,int ,int) ;

void
qla83xx_idc_audit(scsi_qla_host_t *vha, int audit_type)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t idc_audit_reg = 0, duration_secs = 0;

 switch (audit_type) {
 case 128:
  ha->idc_audit_ts = (jiffies_to_msecs(jiffies) / 1000);
  idc_audit_reg = (ha->portnum) |
      (128 << 7) | (ha->idc_audit_ts << 8);
  qla83xx_wr_reg(vha, QLA83XX_IDC_AUDIT, idc_audit_reg);
  break;

 case 129:
  duration_secs = ((jiffies_to_msecs(jiffies) -
      jiffies_to_msecs(ha->idc_audit_ts)) / 1000);
  idc_audit_reg = (ha->portnum) |
      (129 << 7) | (duration_secs << 8);
  qla83xx_wr_reg(vha, QLA83XX_IDC_AUDIT, idc_audit_reg);
  break;

 default:
  ql_log(ql_log_warn, vha, 0xb078,
      "Invalid audit type specified.\n");
  break;
 }
}
