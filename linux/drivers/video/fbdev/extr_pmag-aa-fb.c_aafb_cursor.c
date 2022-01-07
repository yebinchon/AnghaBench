
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fb_info {struct aafb_par* par; } ;
struct TYPE_2__ {int height; int width; int data; scalar_t__ bg_color; scalar_t__ fg_color; int dy; int dx; } ;
struct fb_cursor {int set; scalar_t__ enable; TYPE_1__ image; int rop; int mask; } ;
struct aafb_par {int bt431; int bt455; } ;


 int BT431_CURSOR_SIZE ;
 int EINVAL ;
 int FB_CUR_SETCMAP ;
 int FB_CUR_SETIMAGE ;
 int FB_CUR_SETPOS ;
 int FB_CUR_SETSHAPE ;
 int FB_CUR_SETSIZE ;
 int bt431_enable_cursor (int ) ;
 int bt431_erase_cursor (int ) ;
 int bt431_position_cursor (int ,int ,int ) ;
 int bt431_set_cursor (int ,int ,int ,int ,int ,int ) ;
 int bt455_write_cmap_entry (int ,int,int) ;
 int bt455_write_cmap_next (int ,int) ;
 int bt455_write_ovly_next (int ,int) ;

__attribute__((used)) static int aafb_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 struct aafb_par *par = info->par;

 if (cursor->image.height > BT431_CURSOR_SIZE ||
     cursor->image.width > BT431_CURSOR_SIZE) {
  bt431_erase_cursor(par->bt431);
  return -EINVAL;
 }

 if (!cursor->enable)
  bt431_erase_cursor(par->bt431);

 if (cursor->set & FB_CUR_SETPOS)
  bt431_position_cursor(par->bt431,
          cursor->image.dx, cursor->image.dy);
 if (cursor->set & FB_CUR_SETCMAP) {
  u8 fg = cursor->image.fg_color ? 0xf : 0x0;
  u8 bg = cursor->image.bg_color ? 0xf : 0x0;

  bt455_write_cmap_entry(par->bt455, 8, bg);
  bt455_write_cmap_next(par->bt455, bg);
  bt455_write_ovly_next(par->bt455, fg);
 }
 if (cursor->set & (FB_CUR_SETSIZE | FB_CUR_SETSHAPE | FB_CUR_SETIMAGE))
  bt431_set_cursor(par->bt431,
     cursor->image.data, cursor->mask, cursor->rop,
     cursor->image.width, cursor->image.height);

 if (cursor->enable)
  bt431_enable_cursor(par->bt431);

 return 0;
}
