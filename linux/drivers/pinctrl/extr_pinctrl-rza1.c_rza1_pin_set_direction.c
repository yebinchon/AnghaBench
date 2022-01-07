
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_port {int lock; } ;


 int RZA1_PBDC_REG ;
 int RZA1_PIBC_REG ;
 int RZA1_PM_REG ;
 int rza1_set_bit (struct rza1_port*,int ,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void rza1_pin_set_direction(struct rza1_port *port,
       unsigned int pin, bool input)
{
 unsigned long irqflags;

 spin_lock_irqsave(&port->lock, irqflags);

 rza1_set_bit(port, RZA1_PIBC_REG, pin, 1);
 if (input) {
  rza1_set_bit(port, RZA1_PM_REG, pin, 1);
  rza1_set_bit(port, RZA1_PBDC_REG, pin, 0);
 } else {
  rza1_set_bit(port, RZA1_PM_REG, pin, 0);
  rza1_set_bit(port, RZA1_PBDC_REG, pin, 1);
 }

 spin_unlock_irqrestore(&port->lock, irqflags);
}
