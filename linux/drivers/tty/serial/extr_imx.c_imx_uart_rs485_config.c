
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct serial_rs485 {int flags; scalar_t__ delay_rts_after_send; scalar_t__ delay_rts_before_send; } ;
struct uart_port {struct serial_rs485 rs485; } ;
struct imx_port {int have_rtsgpio; scalar_t__ have_rtscts; } ;


 int SER_RS485_ENABLED ;
 int SER_RS485_RTS_AFTER_SEND ;
 int SER_RS485_RTS_ON_SEND ;
 int SER_RS485_RX_DURING_TX ;
 int UCR2 ;
 int imx_uart_readl (struct imx_port*,int ) ;
 int imx_uart_rts_active (struct imx_port*,int *) ;
 int imx_uart_rts_inactive (struct imx_port*,int *) ;
 int imx_uart_start_rx (struct uart_port*) ;
 int imx_uart_writel (struct imx_port*,int ,int ) ;

__attribute__((used)) static int imx_uart_rs485_config(struct uart_port *port,
     struct serial_rs485 *rs485conf)
{
 struct imx_port *sport = (struct imx_port *)port;
 u32 ucr2;


 rs485conf->delay_rts_before_send = 0;
 rs485conf->delay_rts_after_send = 0;


 if (!sport->have_rtscts && !sport->have_rtsgpio)
  rs485conf->flags &= ~SER_RS485_ENABLED;

 if (rs485conf->flags & SER_RS485_ENABLED) {

  if (sport->have_rtscts && !sport->have_rtsgpio &&
      !(rs485conf->flags & SER_RS485_RTS_ON_SEND))
   rs485conf->flags |= SER_RS485_RX_DURING_TX;


  ucr2 = imx_uart_readl(sport, UCR2);
  if (rs485conf->flags & SER_RS485_RTS_AFTER_SEND)
   imx_uart_rts_active(sport, &ucr2);
  else
   imx_uart_rts_inactive(sport, &ucr2);
  imx_uart_writel(sport, ucr2, UCR2);
 }


 if (!(rs485conf->flags & SER_RS485_ENABLED) ||
     rs485conf->flags & SER_RS485_RX_DURING_TX)
  imx_uart_start_rx(port);

 port->rs485 = *rs485conf;

 return 0;
}
