
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct moschip_port {TYPE_1__* port; } ;
struct async_icount {int frame; int parity; int overrun; int brk; } ;
typedef int __u8 ;
struct TYPE_2__ {struct async_icount icount; } ;


 int SERIAL_LSR_BI ;
 int SERIAL_LSR_FE ;
 int SERIAL_LSR_OE ;
 int SERIAL_LSR_PE ;

__attribute__((used)) static void mos7840_handle_new_lsr(struct moschip_port *port, __u8 new_lsr)
{
 struct async_icount *icount;

 if (new_lsr & SERIAL_LSR_BI) {





  new_lsr &= (__u8) (SERIAL_LSR_OE | SERIAL_LSR_BI);
 }


 icount = &port->port->icount;
 if (new_lsr & SERIAL_LSR_BI)
  icount->brk++;
 if (new_lsr & SERIAL_LSR_OE)
  icount->overrun++;
 if (new_lsr & SERIAL_LSR_PE)
  icount->parity++;
 if (new_lsr & SERIAL_LSR_FE)
  icount->frame++;
}
