
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh_mobile_lcdc_chan {int fb_size; TYPE_3__* lcdc; TYPE_1__* cfg; int bl; int sglist; struct fb_info* info; } ;
struct scatterlist {int dummy; } ;
struct TYPE_5__ {int bits_per_pixel; int yres; int xres; } ;
struct fb_info {scalar_t__ state; scalar_t__ fbdefio; TYPE_2__ var; int bl_dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {scalar_t__ chan; } ;


 int ENOMEM ;
 scalar_t__ FBINFO_STATE_SUSPENDED ;
 scalar_t__ LCDC_CHAN_MAINLCD ;
 int PAGE_SHIFT ;
 int dev_info (int ,char*,int ,char*,int ,int ,int ) ;
 int dev_name (int ) ;
 int register_framebuffer (struct fb_info*) ;
 int sh_mobile_lcdc_clk_off (TYPE_3__*) ;
 int vmalloc (int) ;

__attribute__((used)) static int
sh_mobile_lcdc_channel_fb_register(struct sh_mobile_lcdc_chan *ch)
{
 struct fb_info *info = ch->info;
 int ret;

 if (info->fbdefio) {
  ch->sglist = vmalloc(sizeof(struct scatterlist) *
         ch->fb_size >> PAGE_SHIFT);
  if (!ch->sglist)
   return -ENOMEM;
 }

 info->bl_dev = ch->bl;

 ret = register_framebuffer(info);
 if (ret < 0)
  return ret;

 dev_info(ch->lcdc->dev, "registered %s/%s as %dx%d %dbpp.\n",
   dev_name(ch->lcdc->dev), (ch->cfg->chan == LCDC_CHAN_MAINLCD) ?
   "mainlcd" : "sublcd", info->var.xres, info->var.yres,
   info->var.bits_per_pixel);


 if (info->fbdefio || info->state == FBINFO_STATE_SUSPENDED)
  sh_mobile_lcdc_clk_off(ch->lcdc);

 return ret;
}
