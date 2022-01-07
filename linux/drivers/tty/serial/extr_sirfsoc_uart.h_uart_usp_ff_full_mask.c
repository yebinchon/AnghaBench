
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int fifosize; } ;


 int ilog2 (int ) ;

__attribute__((used)) static u32 uart_usp_ff_full_mask(struct uart_port *port)
{
 u32 full_bit;

 full_bit = ilog2(port->fifosize);
 return (1 << full_bit);
}
