
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rza1_port {int dummy; } ;


 int RZA1_PM_REG ;
 int rza1_get_bit (struct rza1_port*,int ,unsigned int) ;

__attribute__((used)) static inline int rza1_pin_get_direction(struct rza1_port *port,
      unsigned int pin)
{
 return !!rza1_get_bit(port, RZA1_PM_REG, pin);
}
