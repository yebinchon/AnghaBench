
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int CHECK_EXTRA_BITS (struct parport*,unsigned char,unsigned int const) ;
 unsigned int DCR_AUTOFD ;
 unsigned int DCR_SELECT ;
 unsigned int DCR_STROBE ;
 unsigned int DCR_nINIT ;
 int __parport_ip32_frob_control (struct parport*,unsigned int const,unsigned char) ;

__attribute__((used)) static inline void parport_ip32_write_control(struct parport *p,
           unsigned char c)
{
 const unsigned int wm =
  DCR_STROBE | DCR_AUTOFD | DCR_nINIT | DCR_SELECT;
 CHECK_EXTRA_BITS(p, c, wm);
 __parport_ip32_frob_control(p, wm, c & wm);
}
