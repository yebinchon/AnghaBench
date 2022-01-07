
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omapfb_info {scalar_t__ rotation_type; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct fb_fix_screeninfo {int dummy; } ;


 int DBG (char*,int,...) ;
 scalar_t__ OMAP_DSS_ROT_VRFB ;
 int calc_rotation_offset_dma (struct fb_var_screeninfo const*,struct fb_fix_screeninfo const*,int) ;
 int calc_rotation_offset_vrfb (struct fb_var_screeninfo const*,struct fb_fix_screeninfo const*,int) ;
 int omapfb_get_region_paddr (struct omapfb_info const*) ;
 int omapfb_get_region_rot_paddr (struct omapfb_info const*,int) ;

__attribute__((used)) static void omapfb_calc_addr(const struct omapfb_info *ofbi,
        const struct fb_var_screeninfo *var,
        const struct fb_fix_screeninfo *fix,
        int rotation, u32 *paddr)
{
 u32 data_start_p;
 int offset;

 if (ofbi->rotation_type == OMAP_DSS_ROT_VRFB)
  data_start_p = omapfb_get_region_rot_paddr(ofbi, rotation);
 else
  data_start_p = omapfb_get_region_paddr(ofbi);

 if (ofbi->rotation_type == OMAP_DSS_ROT_VRFB)
  offset = calc_rotation_offset_vrfb(var, fix, rotation);
 else
  offset = calc_rotation_offset_dma(var, fix, rotation);

 data_start_p += offset;

 if (offset)
  DBG("offset %d, %d = %d\n",
      var->xoffset, var->yoffset, offset);

 DBG("paddr %x\n", data_start_p);

 *paddr = data_start_p;
}
