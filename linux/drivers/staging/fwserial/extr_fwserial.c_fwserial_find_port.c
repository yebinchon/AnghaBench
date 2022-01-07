
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {int lock; int peer; } ;
struct fwtty_peer {TYPE_1__* serial; } ;
struct TYPE_2__ {struct fwtty_port** ports; } ;


 int num_ttys ;
 int rcu_assign_pointer (int ,struct fwtty_peer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static struct fwtty_port *fwserial_find_port(struct fwtty_peer *peer)
{
 struct fwtty_port **ports = peer->serial->ports;
 int i;


 synchronize_rcu();




 for (i = 0; i < num_ttys; ++i) {
  spin_lock_bh(&ports[i]->lock);
  if (!ports[i]->peer) {

   rcu_assign_pointer(ports[i]->peer, peer);
   spin_unlock_bh(&ports[i]->lock);
   return ports[i];
  }
  spin_unlock_bh(&ports[i]->lock);
 }
 return ((void*)0);
}
