
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int membase; } ;
struct efm32_uart_port {TYPE_1__ port; } ;


 int readl_relaxed (unsigned int) ;

__attribute__((used)) static u32 efm32_uart_read32(struct efm32_uart_port *efm_port,
  unsigned offset)
{
 return readl_relaxed(efm_port->port.membase + offset);
}
