
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fc_seq {int cnt; } ;
struct TYPE_2__ {int (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {scalar_t__ lro_xid; TYPE_1__ tt; int r_a_tov; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int fh_f_ctl; int fh_type; int fh_d_id; int fh_s_id; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int dummy; } ;
struct fc_exch {void (* resp ) (struct fc_seq*,struct fc_frame*,void*) ;void (* destructor ) (struct fc_seq*,void*) ;int f_ctl; scalar_t__ xid; int ex_lock; int esb_stat; int fh_type; struct fc_seq seq; struct fc_lport* lp; int r_a_tov; void* arg; } ;


 int ESB_ST_SEQ_INIT ;
 int FC_FC_FIRST_SEQ ;
 int FC_FC_SEQ_INIT ;
 scalar_t__ FC_RCTL_DD_UNSOL_CMD ;
 struct fc_exch* fc_exch_alloc (struct fc_lport*,struct fc_frame*) ;
 int fc_exch_delete (struct fc_exch*) ;
 int fc_exch_done_locked (struct fc_exch*) ;
 int fc_exch_set_addr (struct fc_exch*,int,int) ;
 int fc_exch_setup_hdr (struct fc_exch*,struct fc_frame*,int) ;
 int fc_exch_timer_set_locked (struct fc_exch*,int ) ;
 int fc_fcp_ddp_done (struct fc_fcp_pkt*) ;
 int fc_fcp_ddp_setup (struct fc_fcp_pkt*,scalar_t__) ;
 int fc_frame_free (struct fc_frame*) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 struct fc_fcp_pkt* fr_fsp (struct fc_frame*) ;
 int ntoh24 (int ) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct fc_lport*,struct fc_frame*) ;
 scalar_t__ unlikely (int ) ;

struct fc_seq *fc_exch_seq_send(struct fc_lport *lport,
    struct fc_frame *fp,
    void (*resp)(struct fc_seq *,
          struct fc_frame *fp,
          void *arg),
    void (*destructor)(struct fc_seq *, void *),
    void *arg, u32 timer_msec)
{
 struct fc_exch *ep;
 struct fc_seq *sp = ((void*)0);
 struct fc_frame_header *fh;
 struct fc_fcp_pkt *fsp = ((void*)0);
 int rc = 1;

 ep = fc_exch_alloc(lport, fp);
 if (!ep) {
  fc_frame_free(fp);
  return ((void*)0);
 }
 ep->esb_stat |= ESB_ST_SEQ_INIT;
 fh = fc_frame_header_get(fp);
 fc_exch_set_addr(ep, ntoh24(fh->fh_s_id), ntoh24(fh->fh_d_id));
 ep->resp = resp;
 ep->destructor = destructor;
 ep->arg = arg;
 ep->r_a_tov = lport->r_a_tov;
 ep->lp = lport;
 sp = &ep->seq;

 ep->fh_type = fh->fh_type;
 ep->f_ctl = ntoh24(fh->fh_f_ctl);
 fc_exch_setup_hdr(ep, fp, ep->f_ctl);
 sp->cnt++;

 if (ep->xid <= lport->lro_xid && fh->fh_r_ctl == FC_RCTL_DD_UNSOL_CMD) {
  fsp = fr_fsp(fp);
  fc_fcp_ddp_setup(fr_fsp(fp), ep->xid);
 }

 if (unlikely(lport->tt.frame_send(lport, fp)))
  goto err;

 if (timer_msec)
  fc_exch_timer_set_locked(ep, timer_msec);
 ep->f_ctl &= ~FC_FC_FIRST_SEQ;

 if (ep->f_ctl & FC_FC_SEQ_INIT)
  ep->esb_stat &= ~ESB_ST_SEQ_INIT;
 spin_unlock_bh(&ep->ex_lock);
 return sp;
err:
 if (fsp)
  fc_fcp_ddp_done(fsp);
 rc = fc_exch_done_locked(ep);
 spin_unlock_bh(&ep->ex_lock);
 if (!rc)
  fc_exch_delete(ep);
 return ((void*)0);
}
