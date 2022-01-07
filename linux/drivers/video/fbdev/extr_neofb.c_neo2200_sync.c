
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neofb_par {TYPE_1__* neo2200; } ;
struct fb_info {struct neofb_par* par; } ;
struct TYPE_2__ {int bltStat; } ;


 int cpu_relax () ;
 int readl (int *) ;

__attribute__((used)) static inline int neo2200_sync(struct fb_info *info)
{
 struct neofb_par *par = info->par;

 while (readl(&par->neo2200->bltStat) & 1)
  cpu_relax();
 return 0;
}
