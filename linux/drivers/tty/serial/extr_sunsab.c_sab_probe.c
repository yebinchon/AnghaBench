
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sab82532_async_regs {int dummy; } sab82532_async_regs ;
struct TYPE_5__ {int membase; int line; } ;
struct uart_sunsab_port {TYPE_2__ port; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {int * resource; TYPE_1__ dev; } ;


 int SUNSAB_CONSOLE () ;
 int of_iounmap (int *,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct uart_sunsab_port*) ;
 int sunsab_init_one (struct uart_sunsab_port*,struct platform_device*,int,int) ;
 struct uart_sunsab_port* sunsab_ports ;
 int sunsab_reg ;
 int sunserial_console_match (int ,int ,int *,int ,int) ;
 int uart_add_one_port (int *,TYPE_2__*) ;
 int uart_remove_one_port (int *,TYPE_2__*) ;

__attribute__((used)) static int sab_probe(struct platform_device *op)
{
 static int inst;
 struct uart_sunsab_port *up;
 int err;

 up = &sunsab_ports[inst * 2];

 err = sunsab_init_one(&up[0], op,
         0,
         (inst * 2) + 0);
 if (err)
  goto out;

 err = sunsab_init_one(&up[1], op,
         sizeof(union sab82532_async_regs),
         (inst * 2) + 1);
 if (err)
  goto out1;

 sunserial_console_match(SUNSAB_CONSOLE(), op->dev.of_node,
    &sunsab_reg, up[0].port.line,
    0);

 sunserial_console_match(SUNSAB_CONSOLE(), op->dev.of_node,
    &sunsab_reg, up[1].port.line,
    0);

 err = uart_add_one_port(&sunsab_reg, &up[0].port);
 if (err)
  goto out2;

 err = uart_add_one_port(&sunsab_reg, &up[1].port);
 if (err)
  goto out3;

 platform_set_drvdata(op, &up[0]);

 inst++;

 return 0;

out3:
 uart_remove_one_port(&sunsab_reg, &up[0].port);
out2:
 of_iounmap(&op->resource[0],
     up[1].port.membase,
     sizeof(union sab82532_async_regs));
out1:
 of_iounmap(&op->resource[0],
     up[0].port.membase,
     sizeof(union sab82532_async_regs));
out:
 return err;
}
