
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int unregister_framebuffer (TYPE_1__*) ;

__attribute__((used)) static void
sh_mobile_lcdc_channel_fb_unregister(struct sh_mobile_lcdc_chan *ch)
{
 if (ch->info && ch->info->dev)
  unregister_framebuffer(ch->info);
}
