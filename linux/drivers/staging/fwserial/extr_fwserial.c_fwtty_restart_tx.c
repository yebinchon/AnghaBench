
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int lock; } ;


 int __fwtty_restart_tx (struct fwtty_port*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fwtty_restart_tx(struct fwtty_port *port)
{
 spin_lock_bh(&port->lock);
 __fwtty_restart_tx(port);
 spin_unlock_bh(&port->lock);
}
