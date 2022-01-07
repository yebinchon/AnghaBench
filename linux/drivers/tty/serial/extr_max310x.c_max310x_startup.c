
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int delay_rts_after_send; int delay_rts_before_send; } ;
struct uart_port {TYPE_2__ rs485; int dev; } ;
struct max310x_port {TYPE_1__* devtype; } ;
struct TYPE_3__ {int (* power ) (struct uart_port*,int) ;} ;


 unsigned int MAX310X_FLOWLVL_HALT (int) ;
 int MAX310X_FLOWLVL_REG ;
 unsigned int MAX310X_FLOWLVL_RES (int) ;
 int MAX310X_HDPIXDELAY_REG ;
 int MAX310X_IRQEN_REG ;
 int MAX310X_IRQSTS_REG ;
 unsigned int MAX310X_IRQ_CTS_BIT ;
 unsigned int MAX310X_IRQ_RXEMPTY_BIT ;
 unsigned int MAX310X_IRQ_TXEMPTY_BIT ;
 int MAX310X_MODE1_REG ;
 unsigned int MAX310X_MODE1_TRNSCVCTRL_BIT ;
 unsigned int MAX310X_MODE2_ECHOSUPR_BIT ;
 unsigned int MAX310X_MODE2_FIFORST_BIT ;
 int MAX310X_MODE2_REG ;
 unsigned int MAX310X_MODE2_RXEMPTINV_BIT ;
 int SER_RS485_ENABLED ;
 int SER_RS485_RX_DURING_TX ;
 int clamp (int ,unsigned int,unsigned int) ;
 struct max310x_port* dev_get_drvdata (int ) ;
 int max310x_port_read (struct uart_port*,int ) ;
 int max310x_port_update (struct uart_port*,int ,unsigned int,unsigned int) ;
 int max310x_port_write (struct uart_port*,int ,unsigned int) ;
 int stub1 (struct uart_port*,int) ;

__attribute__((used)) static int max310x_startup(struct uart_port *port)
{
 struct max310x_port *s = dev_get_drvdata(port->dev);
 unsigned int val;

 s->devtype->power(port, 1);


 max310x_port_update(port, MAX310X_MODE1_REG,
       MAX310X_MODE1_TRNSCVCTRL_BIT, 0);


 val = MAX310X_MODE2_RXEMPTINV_BIT | MAX310X_MODE2_FIFORST_BIT;
 max310x_port_write(port, MAX310X_MODE2_REG, val);
 max310x_port_update(port, MAX310X_MODE2_REG,
       MAX310X_MODE2_FIFORST_BIT, 0);


 val = (clamp(port->rs485.delay_rts_before_send, 0U, 15U) << 4) |
  clamp(port->rs485.delay_rts_after_send, 0U, 15U);
 max310x_port_write(port, MAX310X_HDPIXDELAY_REG, val);

 if (port->rs485.flags & SER_RS485_ENABLED) {
  max310x_port_update(port, MAX310X_MODE1_REG,
        MAX310X_MODE1_TRNSCVCTRL_BIT,
        MAX310X_MODE1_TRNSCVCTRL_BIT);

  if (!(port->rs485.flags & SER_RS485_RX_DURING_TX))
   max310x_port_update(port, MAX310X_MODE2_REG,
         MAX310X_MODE2_ECHOSUPR_BIT,
         MAX310X_MODE2_ECHOSUPR_BIT);
 }



 max310x_port_write(port, MAX310X_FLOWLVL_REG,
      MAX310X_FLOWLVL_RES(48) | MAX310X_FLOWLVL_HALT(96));


 max310x_port_read(port, MAX310X_IRQSTS_REG);


 val = MAX310X_IRQ_RXEMPTY_BIT | MAX310X_IRQ_TXEMPTY_BIT;
 max310x_port_write(port, MAX310X_IRQEN_REG, val | MAX310X_IRQ_CTS_BIT);

 return 0;
}
