
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct s3c_fb_win {unsigned int index; struct s3c_fb* parent; } ;
struct TYPE_2__ {scalar_t__ wincon; scalar_t__ winmap; } ;
struct s3c_fb {scalar_t__ output_on; int enabled; int dev; TYPE_1__ variant; scalar_t__ regs; } ;
struct fb_info {struct s3c_fb_win* par; } ;







 scalar_t__ WINCONx_ENWIN ;
 scalar_t__ WINxMAP_MAP ;
 scalar_t__ WINxMAP_MAP_COLOUR (int) ;
 int dev_dbg (int ,char*,int) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 scalar_t__ readl (scalar_t__) ;
 int s3c_fb_enable (struct s3c_fb*,int) ;
 int shadow_protect_win (struct s3c_fb_win*,int) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static int s3c_fb_blank(int blank_mode, struct fb_info *info)
{
 struct s3c_fb_win *win = info->par;
 struct s3c_fb *sfb = win->parent;
 unsigned int index = win->index;
 u32 wincon;
 u32 output_on = sfb->output_on;

 dev_dbg(sfb->dev, "blank mode %d\n", blank_mode);

 pm_runtime_get_sync(sfb->dev);

 wincon = readl(sfb->regs + sfb->variant.wincon + (index * 4));

 switch (blank_mode) {
 case 130:
  wincon &= ~WINCONx_ENWIN;
  sfb->enabled &= ~(1 << index);


 case 131:

  shadow_protect_win(win, 1);
  writel(WINxMAP_MAP | WINxMAP_MAP_COLOUR(0x0),
         sfb->regs + sfb->variant.winmap + (index * 4));
  shadow_protect_win(win, 0);
  break;

 case 129:
  shadow_protect_win(win, 1);
  writel(0x0, sfb->regs + sfb->variant.winmap + (index * 4));
  shadow_protect_win(win, 0);
  wincon |= WINCONx_ENWIN;
  sfb->enabled |= (1 << index);
  break;

 case 128:
 case 132:
 default:
  pm_runtime_put_sync(sfb->dev);
  return 1;
 }

 shadow_protect_win(win, 1);
 writel(wincon, sfb->regs + sfb->variant.wincon + (index * 4));






 s3c_fb_enable(sfb, sfb->enabled ? 1 : 0);
 shadow_protect_win(win, 0);

 pm_runtime_put_sync(sfb->dev);

 return output_on == sfb->output_on;
}
