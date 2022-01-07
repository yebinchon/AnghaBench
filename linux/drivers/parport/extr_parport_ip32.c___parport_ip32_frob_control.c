
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned int __parport_ip32_read_control (struct parport*) ;
 int __parport_ip32_write_control (struct parport*,unsigned int) ;

__attribute__((used)) static inline void __parport_ip32_frob_control(struct parport *p,
            unsigned int mask,
            unsigned int val)
{
 unsigned int c;
 c = (__parport_ip32_read_control(p) & ~mask) ^ val;
 __parport_ip32_write_control(p, c);
}
