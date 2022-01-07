
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {scalar_t__ ql2xiniexchg; scalar_t__ ql2xexchoffld; } ;


 scalar_t__ FW_DEF_EXCHANGES_CNT ;
 scalar_t__ qla_dual_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_ini_mode_enabled (struct scsi_qla_host*) ;
 scalar_t__ qla_tgt_mode_enabled (struct scsi_qla_host*) ;

__attribute__((used)) static inline bool
qla_is_exch_offld_enabled(struct scsi_qla_host *vha)
{
 if (qla_ini_mode_enabled(vha) &&
     (vha->ql2xiniexchg > FW_DEF_EXCHANGES_CNT))
  return 1;
 else if (qla_tgt_mode_enabled(vha) &&
     (vha->ql2xexchoffld > FW_DEF_EXCHANGES_CNT))
  return 1;
 else if (qla_dual_mode_enabled(vha) &&
     ((vha->ql2xiniexchg + vha->ql2xexchoffld) > FW_DEF_EXCHANGES_CNT))
  return 1;
 else
  return 0;
}
