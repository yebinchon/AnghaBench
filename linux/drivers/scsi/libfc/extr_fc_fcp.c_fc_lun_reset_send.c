
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {scalar_t__ (* fcp_cmd_send ) (struct fc_lport*,struct fc_fcp_pkt*,int ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct TYPE_4__ {void (* function ) (struct timer_list*) ;} ;
struct fc_fcp_pkt {TYPE_2__ timer; int recov_retry; struct fc_lport* lp; } ;


 scalar_t__ FC_MAX_RECOV_RETRY ;
 scalar_t__ fc_fcp_lock_pkt (struct fc_fcp_pkt*) ;
 int fc_fcp_timer_set (struct fc_fcp_pkt*,int ) ;
 int fc_fcp_unlock_pkt (struct fc_fcp_pkt*) ;
 int fc_tm_done ;
 struct fc_fcp_pkt* from_timer (int ,struct timer_list*,int ) ;
 struct fc_fcp_pkt* fsp ;
 int get_fsp_rec_tov (struct fc_fcp_pkt*) ;
 scalar_t__ stub1 (struct fc_lport*,struct fc_fcp_pkt*,int ) ;
 int timer ;

__attribute__((used)) static void fc_lun_reset_send(struct timer_list *t)
{
 struct fc_fcp_pkt *fsp = from_timer(fsp, t, timer);
 struct fc_lport *lport = fsp->lp;

 if (lport->tt.fcp_cmd_send(lport, fsp, fc_tm_done)) {
  if (fsp->recov_retry++ >= FC_MAX_RECOV_RETRY)
   return;
  if (fc_fcp_lock_pkt(fsp))
   return;
  fsp->timer.function = fc_lun_reset_send;
  fc_fcp_timer_set(fsp, get_fsp_rec_tov(fsp));
  fc_fcp_unlock_pkt(fsp);
 }
}
