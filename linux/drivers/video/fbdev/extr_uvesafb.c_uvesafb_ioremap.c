
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_len; int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; } ;


 int ioremap_wc (int ,int ) ;

__attribute__((used)) static void uvesafb_ioremap(struct fb_info *info)
{
 info->screen_base = ioremap_wc(info->fix.smem_start, info->fix.smem_len);
}
