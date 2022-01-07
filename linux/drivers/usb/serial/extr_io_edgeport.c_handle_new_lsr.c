
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edgeport_port {int shadowLSR; TYPE_1__* port; } ;
struct async_icount {int frame; int parity; int overrun; int brk; } ;
typedef int __u8 ;
struct TYPE_2__ {struct async_icount icount; } ;


 int LSR_BREAK ;
 int LSR_FRM_ERR ;
 int LSR_OVER_ERR ;
 int LSR_PAR_ERR ;
 int edge_tty_recv (TYPE_1__*,int*,int) ;

__attribute__((used)) static void handle_new_lsr(struct edgeport_port *edge_port, __u8 lsrData,
       __u8 lsr, __u8 data)
{
 __u8 newLsr = (__u8) (lsr & (__u8)
  (LSR_OVER_ERR | LSR_PAR_ERR | LSR_FRM_ERR | LSR_BREAK));
 struct async_icount *icount;

 edge_port->shadowLSR = lsr;

 if (newLsr & LSR_BREAK) {





  newLsr &= (__u8)(LSR_OVER_ERR | LSR_BREAK);
 }


 if (lsrData)
  edge_tty_recv(edge_port->port, &data, 1);


 icount = &edge_port->port->icount;
 if (newLsr & LSR_BREAK)
  icount->brk++;
 if (newLsr & LSR_OVER_ERR)
  icount->overrun++;
 if (newLsr & LSR_PAR_ERR)
  icount->parity++;
 if (newLsr & LSR_FRM_ERR)
  icount->frame++;
}
