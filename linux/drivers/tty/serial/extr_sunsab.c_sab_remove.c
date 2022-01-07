
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sab82532_async_regs {int dummy; } sab82532_async_regs ;
struct TYPE_2__ {int membase; } ;
struct uart_sunsab_port {TYPE_1__ port; } ;
struct platform_device {int * resource; } ;


 int of_iounmap (int *,int ,int) ;
 struct uart_sunsab_port* platform_get_drvdata (struct platform_device*) ;
 int sunsab_reg ;
 int uart_remove_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int sab_remove(struct platform_device *op)
{
 struct uart_sunsab_port *up = platform_get_drvdata(op);

 uart_remove_one_port(&sunsab_reg, &up[1].port);
 uart_remove_one_port(&sunsab_reg, &up[0].port);
 of_iounmap(&op->resource[0],
     up[1].port.membase,
     sizeof(union sab82532_async_regs));
 of_iounmap(&op->resource[0],
     up[0].port.membase,
     sizeof(union sab82532_async_regs));

 return 0;
}
