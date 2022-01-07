
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {scalar_t__ state; int lock; } ;


 scalar_t__ FWPS_PLUG_PENDING ;
 struct fwtty_peer* from_timer (int ,struct timer_list*,int ) ;
 int fwserial_release_port (struct fwtty_port*,int) ;
 struct fwtty_peer* peer ;
 struct fwtty_port* peer_revert_state (struct fwtty_peer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer ;

__attribute__((used)) static void fwserial_plug_timeout(struct timer_list *t)
{
 struct fwtty_peer *peer = from_timer(peer, t, timer);
 struct fwtty_port *port;

 spin_lock_bh(&peer->lock);
 if (peer->state != FWPS_PLUG_PENDING) {
  spin_unlock_bh(&peer->lock);
  return;
 }

 port = peer_revert_state(peer);
 spin_unlock_bh(&peer->lock);

 if (port)
  fwserial_release_port(port, 0);
}
