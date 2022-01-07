
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {int lock; int peer; } ;
struct fwtty_peer {TYPE_1__* serial; } ;
struct TYPE_2__ {struct fwtty_port** ports; } ;


 int EBUSY ;
 int EINVAL ;
 struct fwtty_port* ERR_PTR (int ) ;
 int num_ports ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct fwtty_peer*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static struct fwtty_port *fwserial_claim_port(struct fwtty_peer *peer,
           int index)
{
 struct fwtty_port *port;

 if (index < 0 || index >= num_ports)
  return ERR_PTR(-EINVAL);


 synchronize_rcu();

 port = peer->serial->ports[index];
 spin_lock_bh(&port->lock);
 if (!rcu_access_pointer(port->peer))
  rcu_assign_pointer(port->peer, peer);
 else
  port = ERR_PTR(-EBUSY);
 spin_unlock_bh(&port->lock);

 return port;
}
