
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp_config_entry_24xx {int options_idx1; } ;
struct scsi_qla_host {int dummy; } ;


 int BIT_4 ;
 int BIT_5 ;
 scalar_t__ qla_dual_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_tgt_mode_enabled (struct scsi_qla_host*) ;

void
qlt_modify_vp_config(struct scsi_qla_host *vha,
 struct vp_config_entry_24xx *vpmod)
{

 if (qla_tgt_mode_enabled(vha) || qla_dual_mode_enabled(vha))
  vpmod->options_idx1 &= ~BIT_5;


 if (qla_tgt_mode_enabled(vha))
  vpmod->options_idx1 &= ~BIT_4;
}
