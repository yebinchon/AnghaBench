
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned char control_sunbpp_to_pc (struct parport*) ;

__attribute__((used)) static unsigned char parport_sunbpp_read_control(struct parport *p)
{
 return control_sunbpp_to_pc(p);
}
