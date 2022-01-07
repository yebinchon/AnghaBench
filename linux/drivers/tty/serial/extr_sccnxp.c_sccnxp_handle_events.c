
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int nr; } ;
struct sccnxp_port {int imr; int * port; scalar_t__* opened; TYPE_1__ uart; } ;


 int ISR_RXRDY (int) ;
 int ISR_TXRDY (int) ;
 int SCCNXP_ISR_REG ;
 int sccnxp_handle_rx (int *) ;
 int sccnxp_handle_tx (int *) ;
 int sccnxp_read (int *,int ) ;

__attribute__((used)) static void sccnxp_handle_events(struct sccnxp_port *s)
{
 int i;
 u8 isr;

 do {
  isr = sccnxp_read(&s->port[0], SCCNXP_ISR_REG);
  isr &= s->imr;
  if (!isr)
   break;

  for (i = 0; i < s->uart.nr; i++) {
   if (s->opened[i] && (isr & ISR_RXRDY(i)))
    sccnxp_handle_rx(&s->port[i]);
   if (s->opened[i] && (isr & ISR_TXRDY(i)))
    sccnxp_handle_tx(&s->port[i]);
  }
 } while (1);
}
