
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virt_plug_params {int fifo_len; int fifo_lo; int fifo_hi; int status_lo; int status_hi; } ;
struct TYPE_3__ {scalar_t__ console; } ;
struct fwtty_port {int device; int con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int lock; int max_payload; int tx_fifo; } ;
struct fwtty_peer {scalar_t__ guid; int unit; struct fwtty_port* port; int fifo_len; int max_payload; void* fifo_addr; void* status_addr; } ;
struct TYPE_4__ {int (* notify ) (int ,int ) ;} ;


 int FWCON_NOTIFY_ATTACH ;
 int FWPS_ATTACHED ;
 int be32_to_cpu (int ) ;
 void* be32_to_u64 (int ,int ) ;
 int dev_name (int ) ;
 int dma_fifo_change_tx_limit (int *,int ) ;
 int fwtty_info (int *,char*,unsigned long long,int ) ;
 int min (int ,int ) ;
 int peer_set_state (struct fwtty_peer*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void fwserial_virt_plug_complete(struct fwtty_peer *peer,
     struct virt_plug_params *params)
{
 struct fwtty_port *port = peer->port;

 peer->status_addr = be32_to_u64(params->status_hi, params->status_lo);
 peer->fifo_addr = be32_to_u64(params->fifo_hi, params->fifo_lo);
 peer->fifo_len = be32_to_cpu(params->fifo_len);
 peer_set_state(peer, FWPS_ATTACHED);


 spin_lock_bh(&port->lock);
 port->max_payload = min(peer->max_payload, peer->fifo_len);
 dma_fifo_change_tx_limit(&port->tx_fifo, port->max_payload);
 spin_unlock_bh(&peer->port->lock);

 if (port->port.console && port->fwcon_ops->notify)
  (*port->fwcon_ops->notify)(FWCON_NOTIFY_ATTACH, port->con_data);

 fwtty_info(&peer->unit, "peer (guid:%016llx) connected on %s\n",
     (unsigned long long)peer->guid, dev_name(port->device));
}
