
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uartclk; int dev; } ;
struct sci_port {int * clk_rates; TYPE_1__ port; int * clks; } ;


 size_t SCI_FCK ;
 unsigned int SCI_NUM_CLKS ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void sci_port_enable(struct sci_port *sci_port)
{
 unsigned int i;

 if (!sci_port->port.dev)
  return;

 pm_runtime_get_sync(sci_port->port.dev);

 for (i = 0; i < SCI_NUM_CLKS; i++) {
  clk_prepare_enable(sci_port->clks[i]);
  sci_port->clk_rates[i] = clk_get_rate(sci_port->clks[i]);
 }
 sci_port->port.uartclk = sci_port->clk_rates[SCI_FCK];
}
