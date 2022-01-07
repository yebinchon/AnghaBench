
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_port {int lock; } ;


 int RZA1_P_REG ;
 int rza1_set_bit (struct rza1_port*,int ,unsigned int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void rza1_pin_set(struct rza1_port *port, unsigned int pin,
    unsigned int value)
{
 unsigned long irqflags;

 spin_lock_irqsave(&port->lock, irqflags);
 rza1_set_bit(port, RZA1_P_REG, pin, !!value);
 spin_unlock_irqrestore(&port->lock, irqflags);
}
