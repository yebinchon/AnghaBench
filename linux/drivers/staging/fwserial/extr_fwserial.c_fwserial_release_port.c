
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ console; } ;
struct fwtty_port {int con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int lock; int peer; int max_payload; int tx_fifo; } ;
struct TYPE_4__ {int (* notify ) (int ,int ) ;} ;


 int FWCON_NOTIFY_DETACH ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SCODE_100 ;
 int dma_fifo_change_tx_limit (int *,int ) ;
 int fwtty_update_port_status (struct fwtty_port*,int ) ;
 int link_speed_to_max_payload (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void fwserial_release_port(struct fwtty_port *port, bool reset)
{

 if (reset)
  fwtty_update_port_status(port, 0);

 spin_lock_bh(&port->lock);


 port->max_payload = link_speed_to_max_payload(SCODE_100);
 dma_fifo_change_tx_limit(&port->tx_fifo, port->max_payload);

 RCU_INIT_POINTER(port->peer, ((void*)0));
 spin_unlock_bh(&port->lock);

 if (port->port.console && port->fwcon_ops->notify)
  (*port->fwcon_ops->notify)(FWCON_NOTIFY_DETACH, port->con_data);
}
