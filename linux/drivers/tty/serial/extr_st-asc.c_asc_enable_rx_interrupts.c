
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int ASC_INTEN ;
 int ASC_INTEN_RBE ;
 int asc_in (struct uart_port*,int ) ;
 int asc_out (struct uart_port*,int ,int) ;

__attribute__((used)) static inline void asc_enable_rx_interrupts(struct uart_port *port)
{
 u32 intenable = asc_in(port, ASC_INTEN) | ASC_INTEN_RBE;
 asc_out(port, ASC_INTEN, intenable);
}
