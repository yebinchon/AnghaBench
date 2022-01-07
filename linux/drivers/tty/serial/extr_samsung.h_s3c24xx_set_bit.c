
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rd_regl (struct uart_port*,unsigned int) ;
 int wr_regl (struct uart_port*,unsigned int,int) ;

__attribute__((used)) static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
       unsigned int reg)
{
 unsigned long flags;
 u32 val;

 local_irq_save(flags);
 val = rd_regl(port, reg);
 val |= (1 << idx);
 wr_regl(port, reg, val);
 local_irq_restore(flags);
}
