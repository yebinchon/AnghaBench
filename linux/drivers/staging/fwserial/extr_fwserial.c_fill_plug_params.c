
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct virt_plug_params {void* fifo_len; void* fifo_lo; void* fifo_hi; void* status_lo; void* status_hi; } ;
struct TYPE_2__ {int offset; int length; } ;
struct fwtty_port {TYPE_1__ rx_handler; } ;


 void* cpu_to_be32 (size_t) ;

__attribute__((used)) static inline void fill_plug_params(struct virt_plug_params *params,
        struct fwtty_port *port)
{
 u64 status_addr = port->rx_handler.offset;
 u64 fifo_addr = port->rx_handler.offset + 4;
 size_t fifo_len = port->rx_handler.length - 4;

 params->status_hi = cpu_to_be32(status_addr >> 32);
 params->status_lo = cpu_to_be32(status_addr);
 params->fifo_hi = cpu_to_be32(fifo_addr >> 32);
 params->fifo_lo = cpu_to_be32(fifo_addr);
 params->fifo_len = cpu_to_be32(fifo_len);
}
