
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {scalar_t__ screen_base; int par; } ;


 int iounmap (scalar_t__) ;
 int simplefb_clocks_destroy (int ) ;
 int simplefb_regulators_destroy (int ) ;

__attribute__((used)) static void simplefb_destroy(struct fb_info *info)
{
 simplefb_regulators_destroy(info->par);
 simplefb_clocks_destroy(info->par);
 if (info->screen_base)
  iounmap(info->screen_base);
}
