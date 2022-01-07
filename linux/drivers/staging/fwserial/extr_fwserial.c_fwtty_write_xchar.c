
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xchars; } ;
struct fwtty_port {int peer; TYPE_1__ stats; } ;
struct fwtty_peer {int fifo_addr; } ;
typedef int ch ;


 int TCODE_WRITE_BLOCK_REQUEST ;
 int fwtty_dbg (struct fwtty_port*,char*,char) ;
 int fwtty_send_data_async (struct fwtty_peer*,int ,int ,char*,int,int *,struct fwtty_port*) ;
 struct fwtty_peer* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void fwtty_write_xchar(struct fwtty_port *port, char ch)
{
 struct fwtty_peer *peer;

 ++port->stats.xchars;

 fwtty_dbg(port, "%02x\n", ch);

 rcu_read_lock();
 peer = rcu_dereference(port->peer);
 if (peer) {
  fwtty_send_data_async(peer, TCODE_WRITE_BLOCK_REQUEST,
          peer->fifo_addr, &ch, sizeof(ch),
          ((void*)0), port);
 }
 rcu_read_unlock();
}
