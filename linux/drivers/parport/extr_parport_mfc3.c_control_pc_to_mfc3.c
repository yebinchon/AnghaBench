
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char PARPORT_CONTROL_AUTOFD ;
 unsigned char PARPORT_CONTROL_INIT ;
 unsigned char PARPORT_CONTROL_SELECT ;
 unsigned char PARPORT_CONTROL_STROBE ;

__attribute__((used)) static unsigned char control_pc_to_mfc3(unsigned char control)
{
 unsigned char ret = 32|64;

 if (control & PARPORT_CONTROL_SELECT)
  ret &= ~32;
 if (control & PARPORT_CONTROL_INIT)
  ret |= 128;
 if (control & PARPORT_CONTROL_AUTOFD)
  ret &= ~64;
 if (control & PARPORT_CONTROL_STROBE)
                                    ;
 return ret;
}
