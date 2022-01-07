
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_qla_host {int dummy; } ;


 int BIT_0 ;
 int BIT_1 ;
 scalar_t__ qla_dual_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_ini_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_tgt_mode_enabled (struct scsi_qla_host*) ;

u8
qlt_rff_id(struct scsi_qla_host *vha)
{
 u8 fc4_feature = 0;



 if (qla_tgt_mode_enabled(vha)) {
  fc4_feature = BIT_0;
 } else if (qla_ini_mode_enabled(vha)) {
  fc4_feature = BIT_1;
 } else if (qla_dual_mode_enabled(vha))
  fc4_feature = BIT_0 | BIT_1;

 return fc4_feature;
}
