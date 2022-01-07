
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int running_gold_fw; } ;
struct qla_hw_data {TYPE_1__ flags; int flt_region_gold_fw; int flt_region_fw; int flt_region_fw_sec; } ;
struct active_regions {scalar_t__ global; } ;
struct TYPE_10__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int IS_QLA27XX (struct qla_hw_data*) ;
 int IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ QLA27XX_SECONDARY_IMAGE ;
 int ql2xfwloadbin ;
 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_init ;
 int ql_log (int ,TYPE_2__*,int,char*) ;
 int ql_log_info ;
 int qla24xx_load_risc_blob (TYPE_2__*,int *) ;
 int qla24xx_load_risc_flash (TYPE_2__*,int *,int ) ;
 int qla27xx_get_active_image (TYPE_2__*,struct active_regions*) ;

int
qla81xx_load_risc(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 struct active_regions active_regions = { };

 if (ql2xfwloadbin == 2)
  goto try_blob_fw;







 if (!IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  goto try_primary_fw;

 qla27xx_get_active_image(vha, &active_regions);

 if (active_regions.global != QLA27XX_SECONDARY_IMAGE)
  goto try_primary_fw;

 ql_dbg(ql_dbg_init, vha, 0x008b,
     "Loading secondary firmware image.\n");
 rval = qla24xx_load_risc_flash(vha, srisc_addr, ha->flt_region_fw_sec);
 if (!rval)
  return rval;

try_primary_fw:
 ql_dbg(ql_dbg_init, vha, 0x008b,
     "Loading primary firmware image.\n");
 rval = qla24xx_load_risc_flash(vha, srisc_addr, ha->flt_region_fw);
 if (!rval)
  return rval;

try_blob_fw:
 rval = qla24xx_load_risc_blob(vha, srisc_addr);
 if (!rval || !ha->flt_region_gold_fw)
  return rval;

 ql_log(ql_log_info, vha, 0x0099,
     "Attempting to fallback to golden firmware.\n");
 rval = qla24xx_load_risc_flash(vha, srisc_addr, ha->flt_region_gold_fw);
 if (rval)
  return rval;

 ql_log(ql_log_info, vha, 0x009a, "Need firmware flash update.\n");
 ha->flags.running_gold_fw = 1;
 return rval;
}
