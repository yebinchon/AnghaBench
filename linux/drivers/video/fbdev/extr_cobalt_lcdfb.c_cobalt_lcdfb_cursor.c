
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int line_length; } ;
struct fb_info {TYPE_1__ fix; } ;
struct TYPE_4__ {int dx; int dy; } ;
struct fb_cursor {int set; scalar_t__ enable; TYPE_2__ image; } ;


 int EINVAL ;

 int LCD_CURSOR_OFF ;
 int LCD_CURSOR_ON ;
 int LCD_TEXT_POS (int) ;
 int LCD_XRES_MAX ;
 int LCD_YRES_MAX ;
 int lcd_busy_wait (struct fb_info*) ;
 int lcd_write_control (struct fb_info*,int ) ;

__attribute__((used)) static int cobalt_lcdfb_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 u32 x, y;
 int retval;

 switch (cursor->set) {
 case 128:
  x = cursor->image.dx;
  y = cursor->image.dy;
  if (x >= LCD_XRES_MAX || y >= LCD_YRES_MAX)
   return -EINVAL;

  retval = lcd_busy_wait(info);
  if (retval < 0)
   return retval;

  lcd_write_control(info,
      LCD_TEXT_POS(info->fix.line_length * y + x));
  break;
 default:
  return -EINVAL;
 }

 retval = lcd_busy_wait(info);
 if (retval < 0)
  return retval;

 if (cursor->enable)
  lcd_write_control(info, LCD_CURSOR_ON);
 else
  lcd_write_control(info, LCD_CURSOR_OFF);

 return 0;
}
