
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tm_iocdowns; scalar_t__ io_iocdowns; scalar_t__ total_ios; scalar_t__ iocom_hostabrts; scalar_t__ iocom_res_free; scalar_t__ iocom_sqer_needed; scalar_t__ iocomp_timedout; scalar_t__ iocomp_aborted; } ;
struct bfa_itnim_s {TYPE_2__ stats; int bfa; } ;
struct TYPE_3__ {int del_tm_iocdowns; int del_io_iocdowns; int del_itn_total_ios; int del_itn_iocom_hostabrts; int del_itn_iocom_res_free; int del_itn_iocom_sqer_needed; int del_itn_iocomp_timedout; int del_itn_iocomp_aborted; } ;
struct bfa_fcpim_s {TYPE_1__ del_itn_stats; } ;


 struct bfa_fcpim_s* BFA_FCPIM (int ) ;

__attribute__((used)) static void
bfa_itnim_update_del_itn_stats(struct bfa_itnim_s *itnim)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(itnim->bfa);
 fcpim->del_itn_stats.del_itn_iocomp_aborted +=
  itnim->stats.iocomp_aborted;
 fcpim->del_itn_stats.del_itn_iocomp_timedout +=
  itnim->stats.iocomp_timedout;
 fcpim->del_itn_stats.del_itn_iocom_sqer_needed +=
  itnim->stats.iocom_sqer_needed;
 fcpim->del_itn_stats.del_itn_iocom_res_free +=
  itnim->stats.iocom_res_free;
 fcpim->del_itn_stats.del_itn_iocom_hostabrts +=
  itnim->stats.iocom_hostabrts;
 fcpim->del_itn_stats.del_itn_total_ios += itnim->stats.total_ios;
 fcpim->del_itn_stats.del_io_iocdowns += itnim->stats.io_iocdowns;
 fcpim->del_itn_stats.del_tm_iocdowns += itnim->stats.tm_iocdowns;
}
