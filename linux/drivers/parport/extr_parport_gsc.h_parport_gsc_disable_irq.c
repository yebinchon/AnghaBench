
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int __parport_gsc_frob_control (struct parport*,int,int) ;

__attribute__((used)) static inline void parport_gsc_disable_irq(struct parport *p)
{
 __parport_gsc_frob_control (p, 0x10, 0x00);
}
