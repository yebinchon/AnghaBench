
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int state; int lock; int unit; int timer; int guid; TYPE_2__* serial; } ;
struct fwserial_mgmt_pkt {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int guid; } ;




 int FWPS_UNPLUG_RESPONDING ;
 int GFP_KERNEL ;
 int RCODE_COMPLETE ;
 int del_timer (int *) ;
 int fill_unplug_rsp_nack (struct fwserial_mgmt_pkt*) ;
 int fill_unplug_rsp_ok (struct fwserial_mgmt_pkt*) ;
 int fwserial_release_port (struct fwtty_port*,int) ;
 int fwserial_send_mgmt_sync (struct fwtty_peer*,struct fwserial_mgmt_pkt*) ;
 int fwtty_err (int *,char*,int) ;
 int kfree (struct fwserial_mgmt_pkt*) ;
 struct fwserial_mgmt_pkt* kmalloc (int,int ) ;
 struct fwtty_port* peer_revert_state (struct fwtty_peer*) ;
 int peer_set_state (struct fwtty_peer*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct fwtty_peer* to_peer (struct work_struct*,struct work_struct*) ;

__attribute__((used)) static void fwserial_handle_unplug_req(struct work_struct *work)
{
 struct fwtty_peer *peer = to_peer(work, work);
 struct fwtty_port *port = ((void*)0);
 struct fwserial_mgmt_pkt *pkt;
 int rcode;

 pkt = kmalloc(sizeof(*pkt), GFP_KERNEL);
 if (!pkt)
  return;

 spin_lock_bh(&peer->lock);

 switch (peer->state) {
 case 129:
  fill_unplug_rsp_ok(pkt);
  peer_set_state(peer, FWPS_UNPLUG_RESPONDING);
  break;

 case 128:
  if (peer->serial->card->guid > peer->guid)
   goto cleanup;


  del_timer(&peer->timer);
  fill_unplug_rsp_ok(pkt);
  peer_set_state(peer, FWPS_UNPLUG_RESPONDING);
  break;

 default:
  fill_unplug_rsp_nack(pkt);
 }

 spin_unlock_bh(&peer->lock);

 rcode = fwserial_send_mgmt_sync(peer, pkt);

 spin_lock_bh(&peer->lock);
 if (peer->state == FWPS_UNPLUG_RESPONDING) {
  if (rcode != RCODE_COMPLETE)
   fwtty_err(&peer->unit, "UNPLUG_RSP error (%d)\n",
      rcode);
  port = peer_revert_state(peer);
 }
cleanup:
 spin_unlock_bh(&peer->lock);
 if (port)
  fwserial_release_port(port, 1);
 kfree(pkt);
}
