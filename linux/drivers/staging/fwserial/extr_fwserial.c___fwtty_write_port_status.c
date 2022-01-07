
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int peer; } ;
struct fwtty_peer {int status_addr; } ;
typedef int status ;


 int ENOENT ;
 int TCODE_WRITE_QUADLET_REQUEST ;
 unsigned int __fwtty_port_line_status (struct fwtty_port*) ;
 int fwtty_send_data_async (struct fwtty_peer*,int ,int ,unsigned int*,int,int *,struct fwtty_port*) ;
 struct fwtty_peer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int __fwtty_write_port_status(struct fwtty_port *port)
{
 struct fwtty_peer *peer;
 int err = -ENOENT;
 unsigned int status = __fwtty_port_line_status(port);

 rcu_read_lock();
 peer = rcu_dereference(port->peer);
 if (peer) {
  err = fwtty_send_data_async(peer, TCODE_WRITE_QUADLET_REQUEST,
         peer->status_addr, &status,
         sizeof(status), ((void*)0), port);
 }
 rcu_read_unlock();

 return err;
}
