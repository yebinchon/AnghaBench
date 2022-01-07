
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned short base; int mode; } ;
typedef TYPE_1__ ppa_struct ;


 int CONNECT_EPP_MAYBE ;
 scalar_t__ IN_EPP_MODE (int ) ;
 int ppa_c_pulse (unsigned short,int) ;

__attribute__((used)) static inline void ppa_connect(ppa_struct *dev, int flag)
{
 unsigned short ppb = dev->base;

 ppa_c_pulse(ppb, 0);
 ppa_c_pulse(ppb, 0x3c);
 ppa_c_pulse(ppb, 0x20);
 if ((flag == CONNECT_EPP_MAYBE) && IN_EPP_MODE(dev->mode))
  ppa_c_pulse(ppb, 0xcf);
 else
  ppa_c_pulse(ppb, 0x8f);
}
