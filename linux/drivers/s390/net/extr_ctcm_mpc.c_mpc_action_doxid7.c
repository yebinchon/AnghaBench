
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xid2 {int xid2_option; } ;
struct net_device {struct ctcm_priv* ml_priv; } ;
struct mpc_group {scalar_t__ outstanding_xid7_p2; scalar_t__ roll; int fsm; } ;
struct ctcm_priv {struct channel** channel; struct mpc_group* mpcg; } ;
struct channel {TYPE_2__* xid_skb; TYPE_1__* ccw; int fsm; int xid_skb_data; struct xid2* xid; } ;
typedef int fsm_instance ;
struct TYPE_5__ {scalar_t__ len; int data; } ;
struct TYPE_4__ {void* cmd_code; } ;


 void* CCW_CMD_SENSE_CMD ;
 void* CCW_CMD_WRITE_CTL ;
 scalar_t__ CH_XID7_PENDING1 ;
 scalar_t__ CH_XID7_PENDING2 ;
 scalar_t__ CH_XID7_PENDING3 ;
 scalar_t__ CH_XID7_PENDING4 ;
 int CTCM_READ ;
 int CTCM_WRITE ;
 int MPCG_EVENT_DOIO ;
 int TH_HEADER_LENGTH ;
 int XID2_7 ;
 scalar_t__ YSIDE ;
 int fsm_event (int ,int ,struct channel*) ;
 scalar_t__ fsm_getstate (int ) ;
 int fsm_newstate (int ,scalar_t__) ;
 int skb_put_data (TYPE_2__*,int *,int ) ;
 int skb_reset_tail_pointer (TYPE_2__*) ;
 int thdummy ;
 int thnorm ;

__attribute__((used)) static void mpc_action_doxid7(fsm_instance *fsm, int event, void *arg)
{
 struct net_device *dev = arg;
 struct ctcm_priv *priv = dev->ml_priv;
 struct mpc_group *grp = ((void*)0);
 int direction;
 int send = 0;

 if (priv)
  grp = priv->mpcg;
 if (grp == ((void*)0))
  return;

 for (direction = CTCM_READ; direction <= CTCM_WRITE; direction++) {
  struct channel *ch = priv->channel[direction];
  struct xid2 *thisxid = ch->xid;
  ch->xid_skb->data = ch->xid_skb_data;
  skb_reset_tail_pointer(ch->xid_skb);
  ch->xid_skb->len = 0;
  thisxid->xid2_option = XID2_7;
  send = 0;


  if (grp->outstanding_xid7_p2 > 0) {
   if (grp->roll == YSIDE) {
    if (fsm_getstate(ch->fsm) == CH_XID7_PENDING1) {
     fsm_newstate(ch->fsm, CH_XID7_PENDING2);
     ch->ccw[8].cmd_code = CCW_CMD_SENSE_CMD;
     skb_put_data(ch->xid_skb, &thdummy,
           TH_HEADER_LENGTH);
     send = 1;
    }
   } else if (fsm_getstate(ch->fsm) < CH_XID7_PENDING2) {
     fsm_newstate(ch->fsm, CH_XID7_PENDING2);
     ch->ccw[8].cmd_code = CCW_CMD_WRITE_CTL;
     skb_put_data(ch->xid_skb, &thnorm,
           TH_HEADER_LENGTH);
     send = 1;
   }
  } else {

   if (grp->roll == YSIDE) {
    if (fsm_getstate(ch->fsm) < CH_XID7_PENDING4) {
     fsm_newstate(ch->fsm, CH_XID7_PENDING4);
     skb_put_data(ch->xid_skb, &thnorm,
           TH_HEADER_LENGTH);
     ch->ccw[8].cmd_code = CCW_CMD_WRITE_CTL;
     send = 1;
    }
   } else if (fsm_getstate(ch->fsm) == CH_XID7_PENDING3) {
    fsm_newstate(ch->fsm, CH_XID7_PENDING4);
    ch->ccw[8].cmd_code = CCW_CMD_SENSE_CMD;
    skb_put_data(ch->xid_skb, &thdummy,
          TH_HEADER_LENGTH);
    send = 1;
   }
  }

  if (send)
   fsm_event(grp->fsm, MPCG_EVENT_DOIO, ch);
 }

 return;
}
