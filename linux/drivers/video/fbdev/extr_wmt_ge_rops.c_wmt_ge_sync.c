
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int EBUSY ;
 scalar_t__ GE_STATUS_OFF ;
 int cpu_relax () ;
 int readl (scalar_t__) ;
 scalar_t__ regbase ;

int wmt_ge_sync(struct fb_info *p)
{
 int loops = 5000000;
 while ((readl(regbase + GE_STATUS_OFF) & 4) && --loops)
  cpu_relax();
 return loops > 0 ? 0 : -EBUSY;
}
