
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lcd_mode; int panel_id; int display_center; } ;
struct viafb_ioctl_setting {TYPE_1__ lcd_attributes; int second_dev_ver_res; int second_dev_hor_res; int first_dev_ver_res; int first_dev_hor_res; int second_dev_refresh; int first_dev_refresh; int second_dev_bpp; int first_dev_bpp; int primary_device; int samm_status; int device_status; } ;


 int CRT_Device ;
 int DVI_Device ;
 int LCD2_Device ;
 int LCD_Device ;
 int get_primary_device () ;
 int viafb_CRT_ON ;
 int viafb_DVI_ON ;
 int viafb_LCD2_ON ;
 int viafb_LCD_ON ;
 int viafb_SAMM_ON ;
 int viafb_bpp ;
 int viafb_bpp1 ;
 int viafb_hotplug_Xres ;
 int viafb_hotplug_Yres ;
 int viafb_lcd_dsp_method ;
 int viafb_lcd_mode ;
 int viafb_lcd_panel_id ;
 int viafb_refresh ;
 int viafb_refresh1 ;
 int viafb_second_xres ;
 int viafb_second_yres ;

__attribute__((used)) static void retrieve_device_setting(struct viafb_ioctl_setting
 *setting_info)
{


 if (viafb_CRT_ON == 1)
  setting_info->device_status = CRT_Device;
 if (viafb_DVI_ON == 1)
  setting_info->device_status |= DVI_Device;
 if (viafb_LCD_ON == 1)
  setting_info->device_status |= LCD_Device;
 if (viafb_LCD2_ON == 1)
  setting_info->device_status |= LCD2_Device;

 setting_info->samm_status = viafb_SAMM_ON;
 setting_info->primary_device = get_primary_device();

 setting_info->first_dev_bpp = viafb_bpp;
 setting_info->second_dev_bpp = viafb_bpp1;

 setting_info->first_dev_refresh = viafb_refresh;
 setting_info->second_dev_refresh = viafb_refresh1;

 setting_info->first_dev_hor_res = viafb_hotplug_Xres;
 setting_info->first_dev_ver_res = viafb_hotplug_Yres;
 setting_info->second_dev_hor_res = viafb_second_xres;
 setting_info->second_dev_ver_res = viafb_second_yres;


 setting_info->lcd_attributes.display_center = viafb_lcd_dsp_method;
 setting_info->lcd_attributes.panel_id = viafb_lcd_panel_id;
 setting_info->lcd_attributes.lcd_mode = viafb_lcd_mode;
}
