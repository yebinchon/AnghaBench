
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int private_data; } ;
struct dw8250_data {int msr_mask_on; int msr_mask_off; } ;


 int UART_MSR ;
 struct dw8250_data* to_dw8250_data (int ) ;

__attribute__((used)) static inline int dw8250_modify_msr(struct uart_port *p, int offset, int value)
{
 struct dw8250_data *d = to_dw8250_data(p->private_data);


 if (offset == UART_MSR) {
  value |= d->msr_mask_on;
  value &= ~d->msr_mask_off;
 }

 return value;
}
