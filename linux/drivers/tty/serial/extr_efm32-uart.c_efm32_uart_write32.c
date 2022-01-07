
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int membase; } ;
struct efm32_uart_port {TYPE_1__ port; } ;


 int writel_relaxed (int ,unsigned int) ;

__attribute__((used)) static void efm32_uart_write32(struct efm32_uart_port *efm_port,
  u32 value, unsigned offset)
{
 writel_relaxed(value, efm_port->port.membase + offset);
}
