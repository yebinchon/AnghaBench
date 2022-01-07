
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; int screen_base; } ;


 int fb_memset (int ,int ,int ) ;

__attribute__((used)) static void sstfb_clear_screen(struct fb_info *info)
{

 fb_memset(info->screen_base, 0, info->fix.smem_len);
}
