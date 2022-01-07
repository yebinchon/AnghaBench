
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_lport {int e_d_tov; int port_id; } ;
struct fc_frame {int dummy; } ;
struct fc_exch {int esb_stat; int state; int ex_lock; int r_a_tov; int sid; int did; int rxid; int oxid; struct fc_lport* lp; } ;
struct fc_els_rrq {void* rrq_rx_id; void* rrq_ox_id; int rrq_s_id; int rrq_cmd; } ;


 int ELS_RRQ ;
 int ESB_ST_REC_QUAL ;
 int ESB_ST_RESP ;
 int FC_EXCH_DBG (struct fc_exch*,char*) ;
 int FC_EX_DONE ;
 int FC_EX_RST_CLEANUP ;
 int FC_FC_END_SEQ ;
 int FC_FC_FIRST_SEQ ;
 int FC_FC_SEQ_INIT ;
 int FC_RCTL_ELS_REQ ;
 int FC_TYPE_ELS ;
 int fc_exch_release (struct fc_exch*) ;
 int fc_exch_rrq_resp ;
 scalar_t__ fc_exch_seq_send (struct fc_lport*,struct fc_frame*,int ,int *,struct fc_exch*,int ) ;
 int fc_exch_timer_set_locked (struct fc_exch*,int ) ;
 int fc_fill_fc_hdr (struct fc_frame*,int ,int ,int ,int ,int,int ) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,int) ;
 struct fc_els_rrq* fc_frame_payload_get (struct fc_frame*,int) ;
 int hton24 (int ,int ) ;
 void* htons (int ) ;
 int memset (struct fc_els_rrq*,int ,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_rrq(struct fc_exch *ep)
{
 struct fc_lport *lport;
 struct fc_els_rrq *rrq;
 struct fc_frame *fp;
 u32 did;

 lport = ep->lp;

 fp = fc_frame_alloc(lport, sizeof(*rrq));
 if (!fp)
  goto retry;

 rrq = fc_frame_payload_get(fp, sizeof(*rrq));
 memset(rrq, 0, sizeof(*rrq));
 rrq->rrq_cmd = ELS_RRQ;
 hton24(rrq->rrq_s_id, ep->sid);
 rrq->rrq_ox_id = htons(ep->oxid);
 rrq->rrq_rx_id = htons(ep->rxid);

 did = ep->did;
 if (ep->esb_stat & ESB_ST_RESP)
  did = ep->sid;

 fc_fill_fc_hdr(fp, FC_RCTL_ELS_REQ, did,
         lport->port_id, FC_TYPE_ELS,
         FC_FC_FIRST_SEQ | FC_FC_END_SEQ | FC_FC_SEQ_INIT, 0);

 if (fc_exch_seq_send(lport, fp, fc_exch_rrq_resp, ((void*)0), ep,
        lport->e_d_tov))
  return;

retry:
 FC_EXCH_DBG(ep, "exch: RRQ send failed\n");
 spin_lock_bh(&ep->ex_lock);
 if (ep->state & (FC_EX_RST_CLEANUP | FC_EX_DONE)) {
  spin_unlock_bh(&ep->ex_lock);

  fc_exch_release(ep);
  return;
 }
 ep->esb_stat |= ESB_ST_REC_QUAL;
 fc_exch_timer_set_locked(ep, ep->r_a_tov);
 spin_unlock_bh(&ep->ex_lock);
}
