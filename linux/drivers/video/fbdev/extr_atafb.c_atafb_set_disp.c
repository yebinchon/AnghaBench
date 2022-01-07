
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_start; } ;
struct fb_info {TYPE_1__ fix; int screen_base; int var; } ;


 int atafb_get_fix (TYPE_1__*,struct fb_info*) ;
 int atafb_get_var (int *,struct fb_info*) ;
 int atari_stram_to_virt (int ) ;
 scalar_t__ external_addr ;
 int external_screen_base ;

__attribute__((used)) static void atafb_set_disp(struct fb_info *info)
{
 atafb_get_var(&info->var, info);
 atafb_get_fix(&info->fix, info);


 info->screen_base = (external_addr ? external_screen_base :
    atari_stram_to_virt(info->fix.smem_start));
}
