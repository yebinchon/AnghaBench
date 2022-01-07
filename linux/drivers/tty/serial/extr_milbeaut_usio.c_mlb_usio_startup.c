
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int line; int lock; scalar_t__ membase; TYPE_2__* dev; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {char* name; } ;


 int BIT (int) ;
 unsigned char MLB_USIO_ESCR_FLWEN ;
 int MLB_USIO_FCR_FCL1 ;
 int MLB_USIO_FCR_FCL2 ;
 int MLB_USIO_FCR_FE1 ;
 int MLB_USIO_FCR_FE2 ;
 int MLB_USIO_FCR_FRIIE ;
 scalar_t__ MLB_USIO_REG_ESCR ;
 scalar_t__ MLB_USIO_REG_FBYTE ;
 scalar_t__ MLB_USIO_REG_FCR ;
 scalar_t__ MLB_USIO_REG_SCR ;
 scalar_t__ MLB_USIO_REG_SSR ;
 unsigned char MLB_USIO_SCR_RIE ;
 unsigned char MLB_USIO_SCR_RXE ;
 unsigned char MLB_USIO_SCR_TBIE ;
 unsigned char MLB_USIO_SCR_TXE ;
 unsigned char MLB_USIO_SCR_UPCL ;
 unsigned char MLB_USIO_SSR_REC ;
 size_t RX ;
 size_t TX ;
 int free_irq (int ,struct uart_port*) ;
 int ** mlb_usio_irq ;
 int mlb_usio_rx_irq ;
 int mlb_usio_tx_irq ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 unsigned char readb (scalar_t__) ;
 int request_irq (int ,int ,int ,char const*,struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* to_platform_device (TYPE_2__*) ;
 int writeb (unsigned char,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int mlb_usio_startup(struct uart_port *port)
{
 const char *portname = to_platform_device(port->dev)->name;
 unsigned long flags;
 int ret, index = port->line;
 unsigned char escr;

 ret = request_irq(mlb_usio_irq[index][RX], mlb_usio_rx_irq,
    0, portname, port);
 if (ret)
  return ret;
 ret = request_irq(mlb_usio_irq[index][TX], mlb_usio_tx_irq,
    0, portname, port);
 if (ret) {
  free_irq(mlb_usio_irq[index][RX], port);
  return ret;
 }

 escr = readb(port->membase + MLB_USIO_REG_ESCR);
 if (of_property_read_bool(port->dev->of_node, "auto-flow-control"))
  escr |= MLB_USIO_ESCR_FLWEN;
 spin_lock_irqsave(&port->lock, flags);
 writeb(0, port->membase + MLB_USIO_REG_SCR);
 writeb(escr, port->membase + MLB_USIO_REG_ESCR);
 writeb(MLB_USIO_SCR_UPCL, port->membase + MLB_USIO_REG_SCR);
 writeb(MLB_USIO_SSR_REC, port->membase + MLB_USIO_REG_SSR);
 writew(0, port->membase + MLB_USIO_REG_FCR);
 writew(MLB_USIO_FCR_FCL1 | MLB_USIO_FCR_FCL2,
        port->membase + MLB_USIO_REG_FCR);
 writew(MLB_USIO_FCR_FE1 | MLB_USIO_FCR_FE2 | MLB_USIO_FCR_FRIIE,
        port->membase + MLB_USIO_REG_FCR);
 writew(0, port->membase + MLB_USIO_REG_FBYTE);
 writew(BIT(12), port->membase + MLB_USIO_REG_FBYTE);

 writeb(MLB_USIO_SCR_TXE | MLB_USIO_SCR_RIE | MLB_USIO_SCR_TBIE |
        MLB_USIO_SCR_RXE, port->membase + MLB_USIO_REG_SCR);
 spin_unlock_irqrestore(&port->lock, flags);

 return 0;
}
