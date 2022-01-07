
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int chip_id; } ;


 int FPConfig ;
 scalar_t__ crt ;
 scalar_t__ fp ;
 int iscyber (int ) ;
 int read3CE (struct tridentfb_par*,int ) ;

__attribute__((used)) static int is_flatpanel(struct tridentfb_par *par)
{
 if (fp)
  return 1;
 if (crt || !iscyber(par->chip_id))
  return 0;
 return (read3CE(par, FPConfig) & 0x10) ? 1 : 0;
}
