
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssd1307fb_par {int client; } ;
struct fb_info {struct ssd1307fb_par* par; } ;


 int FB_BLANK_UNBLANK ;
 int SSD1307FB_DISPLAY_OFF ;
 int SSD1307FB_DISPLAY_ON ;
 int ssd1307fb_write_cmd (int ,int ) ;

__attribute__((used)) static int ssd1307fb_blank(int blank_mode, struct fb_info *info)
{
 struct ssd1307fb_par *par = info->par;

 if (blank_mode != FB_BLANK_UNBLANK)
  return ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_OFF);
 else
  return ssd1307fb_write_cmd(par->client, SSD1307FB_DISPLAY_ON);
}
