
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int cpu_relax () ;
 int lpuart32_read (struct uart_port*,unsigned int) ;

__attribute__((used)) static void lpuart32_wait_bit_set(struct uart_port *port, unsigned int offset,
      u32 bit)
{
 while (!(lpuart32_read(port, offset) & bit))
  cpu_relax();
}
