
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2fb_par {int dummy; } ;


 unsigned long BLANK_BIT ;
 int DISP_DIWCONF ;
 struct pvr2fb_par* currentpar ;
 scalar_t__ do_blank ;
 unsigned long fb_readl (int ) ;
 int fb_writel (unsigned long,int ) ;
 scalar_t__ is_blanked ;

__attribute__((used)) static void pvr2_do_blank(void)
{
 struct pvr2fb_par *par = currentpar;
 unsigned long diwconf;

 diwconf = fb_readl(DISP_DIWCONF);
 if (do_blank > 0)
  fb_writel(diwconf | BLANK_BIT, DISP_DIWCONF);
 else
  fb_writel(diwconf & ~BLANK_BIT, DISP_DIWCONF);

 is_blanked = do_blank > 0 ? do_blank : 0;
}
