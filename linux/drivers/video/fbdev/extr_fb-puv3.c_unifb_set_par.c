
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int xres; int yres; int upper_margin; int lower_margin; int left_margin; int right_margin; int hsync_len; int vsync_len; scalar_t__ pixclock; int xres_virtual; int bits_per_pixel; } ;
struct TYPE_5__ {int line_length; int smem_start; } ;
struct fb_info {TYPE_3__ var; TYPE_2__ fix; int device; } ;
struct clk {int dummy; } ;
struct TYPE_4__ {int xres; int yres; int upper_margin; int lower_margin; int left_margin; int right_margin; int hsync_len; int vsync_len; scalar_t__ pixclock; } ;


 int EINVAL ;
 int ENOENT ;
 struct clk* ERR_PTR (int) ;
 int UDE_CFG ;
 int UDE_CFG_DST16 ;
 int UDE_CFG_DST24 ;
 int UDE_CFG_DST32 ;
 int UDE_CFG_DST8 ;
 int UDE_CFG_GDEN_ENABLE ;
 int UDE_CFG_TIMEUP_ENABLE ;
 int UDE_FSA ;
 int UDE_HAT ;
 int UDE_HBT ;
 int UDE_HST ;
 int UDE_LS ;
 int UDE_PS ;
 int UDE_VAT ;
 int UDE_VBT ;
 int UDE_VST ;
 struct clk* clk_get (int ,char*) ;
 scalar_t__ clk_set_rate (struct clk*,scalar_t__) ;
 int get_line_length (int,int) ;
 TYPE_3__ unifb_default ;
 TYPE_2__ unifb_fix ;
 TYPE_1__* unifb_modes ;
 int writel (int,int ) ;

__attribute__((used)) static int unifb_set_par(struct fb_info *info)
{
 int hTotal, vTotal, hSyncStart, hSyncEnd, vSyncStart, vSyncEnd;
 int format;
 info->fix.line_length = get_line_length(info->var.xres_virtual,
      info->var.bits_per_pixel);

 hSyncStart = info->var.xres + info->var.right_margin;
 hSyncEnd = hSyncStart + info->var.hsync_len;
 hTotal = hSyncEnd + info->var.left_margin;

 vSyncStart = info->var.yres + info->var.lower_margin;
 vSyncEnd = vSyncStart + info->var.vsync_len;
 vTotal = vSyncEnd + info->var.upper_margin;

 switch (info->var.bits_per_pixel) {
 case 8:
  format = UDE_CFG_DST8;
  break;
 case 16:
  format = UDE_CFG_DST16;
  break;
 case 24:
  format = UDE_CFG_DST24;
  break;
 case 32:
  format = UDE_CFG_DST32;
  break;
 default:
  return -EINVAL;
 }

 writel(info->fix.smem_start, UDE_FSA);
 writel(info->var.yres, UDE_LS);
 writel(get_line_length(info->var.xres,
   info->var.bits_per_pixel) >> 3, UDE_PS);

 writel((hTotal << 16) | (info->var.xres), UDE_HAT);
 writel(((hTotal - 1) << 16) | (info->var.xres - 1), UDE_HBT);
 writel(((hSyncEnd - 1) << 16) | (hSyncStart - 1), UDE_HST);
 writel((vTotal << 16) | (info->var.yres), UDE_VAT);
 writel(((vTotal - 1) << 16) | (info->var.yres - 1), UDE_VBT);
 writel(((vSyncEnd - 1) << 16) | (vSyncStart - 1), UDE_VST);
 writel(UDE_CFG_GDEN_ENABLE | UDE_CFG_TIMEUP_ENABLE
   | format | 0xC0000001, UDE_CFG);

 return 0;
}
