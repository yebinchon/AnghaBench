
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char PARPORT_CONTROL_AUTOFD ;
 unsigned char PARPORT_CONTROL_INIT ;
 unsigned char PARPORT_CONTROL_SELECT ;
 unsigned char PARPORT_CONTROL_STROBE ;

__attribute__((used)) static unsigned char control_mfc3_to_pc(unsigned char control)
{
 unsigned char ret = PARPORT_CONTROL_STROBE
     | PARPORT_CONTROL_AUTOFD | PARPORT_CONTROL_SELECT;

 if (control & 128)
  ret |= PARPORT_CONTROL_INIT;
 if (control & 64)
  ret &= ~PARPORT_CONTROL_AUTOFD;
 if (control & 32)
  ret &= ~PARPORT_CONTROL_SELECT;
 return ret;
}
