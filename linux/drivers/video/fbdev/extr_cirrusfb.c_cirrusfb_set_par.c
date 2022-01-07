
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int cirrusfb_set_par_foo (struct fb_info*) ;

__attribute__((used)) static int cirrusfb_set_par(struct fb_info *info)
{
 cirrusfb_set_par_foo(info);
 return cirrusfb_set_par_foo(info);
}
