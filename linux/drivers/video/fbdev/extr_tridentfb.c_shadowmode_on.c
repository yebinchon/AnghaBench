
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int dummy; } ;


 int CyberControl ;
 int read3CE (struct tridentfb_par*,int ) ;
 int write3CE (struct tridentfb_par*,int ,int) ;

__attribute__((used)) static inline void shadowmode_on(struct tridentfb_par *par)
{
 write3CE(par, CyberControl, read3CE(par, CyberControl) | 0x81);
}
