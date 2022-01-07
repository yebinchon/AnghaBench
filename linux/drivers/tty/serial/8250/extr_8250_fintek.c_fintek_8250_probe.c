
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fintek_8250* private_data; int dev; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct fintek_8250 {int dummy; } ;
typedef int probe_data ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct fintek_8250* devm_kzalloc (int ,int,int ) ;
 int fintek_8250_set_rs485_handler (struct uart_8250_port*) ;
 int fintek_8250_set_termios_handler (struct uart_8250_port*) ;
 int memcpy (struct fintek_8250*,struct fintek_8250*,int) ;
 scalar_t__ probe_setup_port (struct fintek_8250*,struct uart_8250_port*) ;

int fintek_8250_probe(struct uart_8250_port *uart)
{
 struct fintek_8250 *pdata;
 struct fintek_8250 probe_data;

 if (probe_setup_port(&probe_data, uart))
  return -ENODEV;

 pdata = devm_kzalloc(uart->port.dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 memcpy(pdata, &probe_data, sizeof(probe_data));
 uart->port.private_data = pdata;
 fintek_8250_set_rs485_handler(uart);
 fintek_8250_set_termios_handler(uart);

 return 0;
}
