
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct uart_amba_port {TYPE_3__ port; } ;
struct TYPE_5__ {int state; } ;


 int REG_ICR ;
 int REG_IMSC ;
 TYPE_1__ amba_reg ;
 int dev_err (int ,char*) ;
 int pl011_unregister_port (struct uart_amba_port*) ;
 int pl011_write (int,struct uart_amba_port*,int ) ;
 int uart_add_one_port (TYPE_1__*,TYPE_3__*) ;
 int uart_register_driver (TYPE_1__*) ;

__attribute__((used)) static int pl011_register_port(struct uart_amba_port *uap)
{
 int ret;


 pl011_write(0, uap, REG_IMSC);
 pl011_write(0xffff, uap, REG_ICR);

 if (!amba_reg.state) {
  ret = uart_register_driver(&amba_reg);
  if (ret < 0) {
   dev_err(uap->port.dev,
    "Failed to register AMBA-PL011 driver\n");
   return ret;
  }
 }

 ret = uart_add_one_port(&amba_reg, &uap->port);
 if (ret)
  pl011_unregister_port(uap);

 return ret;
}
