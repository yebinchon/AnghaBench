
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int mctrl; int irq; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int dummy; } ;


 int IRQF_SHARED ;
 int TXX9_SIDICR ;
 int TXX9_SIDICR_RIE ;
 int TXX9_SIDISR ;
 int TXX9_SIFCR ;
 int TXX9_SIFCR_FRSTE ;
 int TXX9_SIFCR_RFRST ;
 int TXX9_SIFCR_TFRST ;
 int TXX9_SIFLCR ;
 int TXX9_SIFLCR_RSDE ;
 int TXX9_SIFLCR_TSDE ;
 int request_irq (int ,int ,int ,char*,struct uart_txx9_port*) ;
 int serial_txx9_interrupt ;
 int serial_txx9_set_mctrl (TYPE_1__*,int ) ;
 int sio_mask (struct uart_txx9_port*,int ,int) ;
 int sio_out (struct uart_txx9_port*,int ,int ) ;
 int sio_set (struct uart_txx9_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_txx9_port* to_uart_txx9_port (struct uart_port*) ;

__attribute__((used)) static int serial_txx9_startup(struct uart_port *port)
{
 struct uart_txx9_port *up = to_uart_txx9_port(port);
 unsigned long flags;
 int retval;





 sio_set(up, TXX9_SIFCR,
  TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);

 sio_mask(up, TXX9_SIFCR,
   TXX9_SIFCR_TFRST | TXX9_SIFCR_RFRST | TXX9_SIFCR_FRSTE);
 sio_out(up, TXX9_SIDICR, 0);




 sio_out(up, TXX9_SIDISR, 0);

 retval = request_irq(up->port.irq, serial_txx9_interrupt,
        IRQF_SHARED, "serial_txx9", up);
 if (retval)
  return retval;




 spin_lock_irqsave(&up->port.lock, flags);
 serial_txx9_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);


 sio_mask(up, TXX9_SIFLCR, TXX9_SIFLCR_RSDE | TXX9_SIFLCR_TSDE);




 sio_set(up, TXX9_SIDICR, TXX9_SIDICR_RIE);

 return 0;
}
