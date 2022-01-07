
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned char PARPORT_CONTROL_AUTOFD ;
 unsigned char PARPORT_CONTROL_INIT ;
 unsigned char PARPORT_CONTROL_SELECT ;
 unsigned char PARPORT_CONTROL_STROBE ;
 int parport_sunbpp_frob_control (struct parport*,unsigned char const,unsigned char) ;

__attribute__((used)) static void parport_sunbpp_write_control(struct parport *p, unsigned char d)
{
 const unsigned char wm = (PARPORT_CONTROL_STROBE |
      PARPORT_CONTROL_AUTOFD |
      PARPORT_CONTROL_INIT |
      PARPORT_CONTROL_SELECT);

 parport_sunbpp_frob_control (p, wm, d & wm);
}
