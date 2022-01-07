
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct arcfb_par* par; } ;
struct arcfb_par {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static int arcfb_open(struct fb_info *info, int user)
{
 struct arcfb_par *par = info->par;

 atomic_inc(&par->ref_count);
 return 0;
}
