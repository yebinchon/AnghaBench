
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned int DCR_AUTOFD ;
 unsigned int DCR_SELECT ;
 unsigned int DCR_STROBE ;
 unsigned int DCR_nINIT ;
 unsigned int const __parport_ip32_read_control (struct parport*) ;

__attribute__((used)) static inline unsigned char parport_ip32_read_control(struct parport *p)
{
 const unsigned int rm =
  DCR_STROBE | DCR_AUTOFD | DCR_nINIT | DCR_SELECT;
 return __parport_ip32_read_control(p) & rm;
}
