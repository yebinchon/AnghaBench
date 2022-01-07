
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf50633_bl {unsigned int brightness_limit; int bl; } ;
struct pcf50633 {int bl_pdev; } ;


 int ENODEV ;
 int backlight_update_status (int ) ;
 struct pcf50633_bl* platform_get_drvdata (int ) ;

int pcf50633_bl_set_brightness_limit(struct pcf50633 *pcf, unsigned int limit)
{
 struct pcf50633_bl *pcf_bl = platform_get_drvdata(pcf->bl_pdev);

 if (!pcf_bl)
  return -ENODEV;

 pcf_bl->brightness_limit = limit & 0x3f;
 backlight_update_status(pcf_bl->bl);

 return 0;
}
