
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_seq {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int state; int lp; scalar_t__ sid; int did; int seq; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int ENXIO ;
 int ESB_ST_ABNORMAL ;
 int ESB_ST_COMPLETE ;
 int ESB_ST_SEQ_INIT ;
 int FC_EXCH_DBG (struct fc_exch*,char*,int,...) ;
 int FC_EX_DONE ;
 int FC_EX_RST_CLEANUP ;
 int FC_FC_END_SEQ ;
 int FC_FC_SEQ_INIT ;
 int FC_RCTL_BA_ABTS ;
 int FC_TYPE_BLS ;
 int fc_exch_timer_set_locked (struct fc_exch*,unsigned int) ;
 int fc_fill_fc_hdr (struct fc_frame*,int ,int ,scalar_t__,int ,int,int ) ;
 struct fc_frame* fc_frame_alloc (int ,int ) ;
 int fc_seq_send_locked (int ,struct fc_seq*,struct fc_frame*) ;
 struct fc_seq* fc_seq_start_next_locked (int *) ;

__attribute__((used)) static int fc_exch_abort_locked(struct fc_exch *ep,
    unsigned int timer_msec)
{
 struct fc_seq *sp;
 struct fc_frame *fp;
 int error;

 FC_EXCH_DBG(ep, "exch: abort, time %d msecs\n", timer_msec);
 if (ep->esb_stat & (ESB_ST_COMPLETE | ESB_ST_ABNORMAL) ||
     ep->state & (FC_EX_DONE | FC_EX_RST_CLEANUP)) {
  FC_EXCH_DBG(ep, "exch: already completed esb %x state %x\n",
       ep->esb_stat, ep->state);
  return -ENXIO;
 }




 sp = fc_seq_start_next_locked(&ep->seq);
 if (!sp)
  return -ENOMEM;

 if (timer_msec)
  fc_exch_timer_set_locked(ep, timer_msec);

 if (ep->sid) {



  fp = fc_frame_alloc(ep->lp, 0);
  if (fp) {
   ep->esb_stat |= ESB_ST_SEQ_INIT;
   fc_fill_fc_hdr(fp, FC_RCTL_BA_ABTS, ep->did, ep->sid,
           FC_TYPE_BLS, FC_FC_END_SEQ |
           FC_FC_SEQ_INIT, 0);
   error = fc_seq_send_locked(ep->lp, sp, fp);
  } else {
   error = -ENOBUFS;
  }
 } else {




  error = 0;
 }
 ep->esb_stat |= ESB_ST_ABNORMAL;
 return error;
}
