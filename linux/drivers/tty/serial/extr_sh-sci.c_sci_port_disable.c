
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct sci_port {TYPE_1__ port; int * clks; } ;


 unsigned int SCI_NUM_CLKS ;
 int clk_disable_unprepare (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void sci_port_disable(struct sci_port *sci_port)
{
 unsigned int i;

 if (!sci_port->port.dev)
  return;

 for (i = SCI_NUM_CLKS; i-- > 0; )
  clk_disable_unprepare(sci_port->clks[i]);

 pm_runtime_put_sync(sci_port->port.dev);
}
