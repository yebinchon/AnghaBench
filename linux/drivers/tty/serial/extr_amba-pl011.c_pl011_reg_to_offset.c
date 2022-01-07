
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_amba_port {unsigned int* reg_offset; } ;



__attribute__((used)) static unsigned int pl011_reg_to_offset(const struct uart_amba_port *uap,
 unsigned int reg)
{
 return uap->reg_offset[reg];
}
