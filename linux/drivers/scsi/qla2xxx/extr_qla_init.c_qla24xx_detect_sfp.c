
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sff_8247_a0 {int fc_ll_cc7; int length_km; int length_100m; } ;
struct TYPE_9__ {int detected_lr_sfp; int using_lr_setting; } ;
struct qla_hw_data {TYPE_1__ flags; int long_range_distance; scalar_t__ sfp_data; } ;
struct TYPE_10__ {int init_done; } ;
struct TYPE_11__ {TYPE_2__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;


 int AUTO_DETECT_SFP_SUPPORT (TYPE_3__*) ;
 int FC_LL_L ;
 int FC_LL_VL ;
 int LR_DISTANCE_10K ;
 int LR_DISTANCE_5K ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_3__*,int,char*) ;
 int ql_dbg_async ;
 int qla2x00_read_sfp_dev (TYPE_3__*,int *,int ) ;
 int qla2xxx_print_sfp_info (TYPE_3__*) ;

int
qla24xx_detect_sfp(scsi_qla_host_t *vha)
{
 int rc = QLA_SUCCESS;
 struct sff_8247_a0 *a;
 struct qla_hw_data *ha = vha->hw;

 if (!AUTO_DETECT_SFP_SUPPORT(vha))
  goto out;

 rc = qla2x00_read_sfp_dev(vha, ((void*)0), 0);
 if (rc)
  goto out;

 a = (struct sff_8247_a0 *)vha->hw->sfp_data;
 qla2xxx_print_sfp_info(vha);

 if (a->fc_ll_cc7 & FC_LL_VL || a->fc_ll_cc7 & FC_LL_L) {

  ha->flags.detected_lr_sfp = 1;

  if (a->length_km > 5 || a->length_100m > 50)
   ha->long_range_distance = LR_DISTANCE_10K;
  else
   ha->long_range_distance = LR_DISTANCE_5K;

  if (ha->flags.detected_lr_sfp != ha->flags.using_lr_setting)
   ql_dbg(ql_dbg_async, vha, 0x507b,
       "Detected Long Range SFP.\n");
 } else {

  ha->flags.detected_lr_sfp = 0;
  if (ha->flags.using_lr_setting)
   ql_dbg(ql_dbg_async, vha, 0x5084,
       "Detected Short Range SFP.\n");
 }

 if (!vha->flags.init_done)
  rc = QLA_SUCCESS;
out:
 return rc;
}
