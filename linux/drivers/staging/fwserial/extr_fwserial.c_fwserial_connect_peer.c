
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int dummy; } ;
struct fwtty_peer {scalar_t__ state; int lock; int timer; struct fwtty_port* port; int unit; } ;
struct fwserial_mgmt_pkt {int dummy; } ;


 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ FWPS_NOT_ATTACHED ;
 scalar_t__ FWPS_PLUG_PENDING ;
 int GFP_KERNEL ;
 int RCODE_COMPLETE ;
 int RCODE_CONFLICT_ERROR ;
 scalar_t__ VIRT_CABLE_PLUG_TIMEOUT ;
 int del_timer (int *) ;
 int fill_plug_req (struct fwserial_mgmt_pkt*,struct fwtty_port*) ;
 struct fwtty_port* fwserial_find_port (struct fwtty_peer*) ;
 int fwserial_release_port (struct fwtty_port*,int) ;
 int fwserial_send_mgmt_sync (struct fwtty_peer*,struct fwserial_mgmt_pkt*) ;
 int fwtty_err (int *,char*) ;
 scalar_t__ jiffies ;
 int kfree (struct fwserial_mgmt_pkt*) ;
 struct fwserial_mgmt_pkt* kmalloc (int,int ) ;
 int mod_timer (int *,scalar_t__) ;
 int peer_revert_state (struct fwtty_peer*) ;
 int peer_set_state (struct fwtty_peer*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fwserial_connect_peer(struct fwtty_peer *peer)
{
 struct fwtty_port *port;
 struct fwserial_mgmt_pkt *pkt;
 int err, rcode;

 pkt = kmalloc(sizeof(*pkt), GFP_KERNEL);
 if (!pkt)
  return -ENOMEM;

 port = fwserial_find_port(peer);
 if (!port) {
  fwtty_err(&peer->unit, "avail ports in use\n");
  err = -EBUSY;
  goto free_pkt;
 }

 spin_lock_bh(&peer->lock);


 if (peer->state != FWPS_NOT_ATTACHED) {
  err = -EBUSY;
  goto release_port;
 }

 peer->port = port;
 peer_set_state(peer, FWPS_PLUG_PENDING);

 fill_plug_req(pkt, peer->port);

 mod_timer(&peer->timer, jiffies + VIRT_CABLE_PLUG_TIMEOUT);
 spin_unlock_bh(&peer->lock);

 rcode = fwserial_send_mgmt_sync(peer, pkt);

 spin_lock_bh(&peer->lock);
 if (peer->state == FWPS_PLUG_PENDING && rcode != RCODE_COMPLETE) {
  if (rcode == RCODE_CONFLICT_ERROR)
   err = -EAGAIN;
  else
   err = -EIO;
  goto cancel_timer;
 }
 spin_unlock_bh(&peer->lock);

 kfree(pkt);
 return 0;

cancel_timer:
 del_timer(&peer->timer);
 peer_revert_state(peer);
release_port:
 spin_unlock_bh(&peer->lock);
 fwserial_release_port(port, 0);
free_pkt:
 kfree(pkt);
 return err;
}
