
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_omap_port {int ier; } ;


 int UART_IER ;
 int UART_IER_THRI ;
 int serial_out (struct uart_omap_port*,int ,int) ;

__attribute__((used)) static inline void serial_omap_enable_ier_thri(struct uart_omap_port *up)
{
 if (!(up->ier & UART_IER_THRI)) {
  up->ier |= UART_IER_THRI;
  serial_out(up, UART_IER, up->ier);
 }
}
