
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {TYPE_1__* fbops; int count; } ;
struct TYPE_2__ {int (* fb_destroy ) (struct fb_info*) ;} ;


 int atomic_dec_and_test (int *) ;
 int stub1 (struct fb_info*) ;

__attribute__((used)) static void put_fb_info(struct fb_info *fb_info)
{
 if (!atomic_dec_and_test(&fb_info->count))
  return;
 if (fb_info->fbops->fb_destroy)
  fb_info->fbops->fb_destroy(fb_info);
}
