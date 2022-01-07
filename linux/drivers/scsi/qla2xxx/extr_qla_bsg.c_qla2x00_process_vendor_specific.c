
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* vendor_cmd; } ;
struct TYPE_4__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct bsg_job {struct fc_bsg_request* request; } ;


 int ENOSYS ;
 int qla24xx_iidma (struct bsg_job*) ;
 int qla24xx_proc_fcp_prio_cfg_cmd (struct bsg_job*) ;
 int qla24xx_process_bidir_cmd (struct bsg_job*) ;
 int qla26xx_serdes_op (struct bsg_job*) ;
 int qla27xx_get_bbcr_data (struct bsg_job*) ;
 int qla27xx_get_flash_upd_cap (struct bsg_job*) ;
 int qla27xx_set_flash_upd_cap (struct bsg_job*) ;
 int qla2x00_do_dport_diagnostics (struct bsg_job*) ;
 int qla2x00_get_flash_image_status (struct bsg_job*) ;
 int qla2x00_get_priv_stats (struct bsg_job*) ;
 int qla2x00_process_loopback (struct bsg_job*) ;
 int qla2x00_read_fru_status (struct bsg_job*) ;
 int qla2x00_read_i2c (struct bsg_job*) ;
 int qla2x00_read_optrom (struct bsg_job*) ;
 int qla2x00_update_fru_versions (struct bsg_job*) ;
 int qla2x00_update_optrom (struct bsg_job*) ;
 int qla2x00_write_fru_status (struct bsg_job*) ;
 int qla2x00_write_i2c (struct bsg_job*) ;
 int qla8044_serdes_op (struct bsg_job*) ;
 int qla84xx_mgmt_cmd (struct bsg_job*) ;
 int qla84xx_reset (struct bsg_job*) ;
 int qla84xx_updatefw (struct bsg_job*) ;
 int qlafx00_mgmt_cmd (struct bsg_job*) ;

__attribute__((used)) static int
qla2x00_process_vendor_specific(struct bsg_job *bsg_job)
{
 struct fc_bsg_request *bsg_request = bsg_job->request;

 switch (bsg_request->rqst_data.h_vendor.vendor_cmd[0]) {
 case 139:
  return qla2x00_process_loopback(bsg_job);

 case 150:
  return qla84xx_reset(bsg_job);

 case 149:
  return qla84xx_updatefw(bsg_job);

 case 151:
  return qla84xx_mgmt_cmd(bsg_job);

 case 140:
  return qla24xx_iidma(bsg_job);

 case 146:
  return qla24xx_proc_fcp_prio_cfg_cmd(bsg_job);

 case 138:
  return qla2x00_read_optrom(bsg_job);

 case 130:
  return qla2x00_update_optrom(bsg_job);

 case 132:
  return qla2x00_update_fru_versions(bsg_job);

 case 137:
  return qla2x00_read_fru_status(bsg_job);

 case 129:
  return qla2x00_write_fru_status(bsg_job);

 case 128:
  return qla2x00_write_i2c(bsg_job);

 case 136:
  return qla2x00_read_i2c(bsg_job);

 case 148:
  return qla24xx_process_bidir_cmd(bsg_job);

 case 145:
  return qlafx00_mgmt_cmd(bsg_job);

 case 135:
  return qla26xx_serdes_op(bsg_job);

 case 134:
  return qla8044_serdes_op(bsg_job);

 case 143:
  return qla27xx_get_flash_upd_cap(bsg_job);

 case 133:
  return qla27xx_set_flash_upd_cap(bsg_job);

 case 144:
  return qla27xx_get_bbcr_data(bsg_job);

 case 142:
 case 141:
  return qla2x00_get_priv_stats(bsg_job);

 case 147:
  return qla2x00_do_dport_diagnostics(bsg_job);

 case 131:
  return qla2x00_get_flash_image_status(bsg_job);

 default:
  return -ENOSYS;
 }
}
