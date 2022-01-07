
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct fb_var_screeninfo {int xres; int yres; int bits_per_pixel; } ;
struct TYPE_28__ {TYPE_7__* shared; TYPE_2__* chip_info; TYPE_12__* lvds_setting_info2; TYPE_12__* lvds_setting_info; TYPE_1__* tmds_setting_info; int depth; } ;
struct TYPE_27__ {int depth; } ;
struct TYPE_25__ {scalar_t__ iga_path; } ;
struct TYPE_26__ {int iga1_devices; int iga2_devices; TYPE_6__ tmds_setting_info; } ;
struct TYPE_24__ {int line_length; } ;
struct TYPE_23__ {int line_length; } ;
struct TYPE_22__ {int port; int mask; int value; int index; } ;
struct TYPE_21__ {scalar_t__ gfx_chip_name; int lvds_chip_info2; int lvds_chip_info; } ;
struct TYPE_20__ {scalar_t__ iga_path; } ;
struct TYPE_19__ {int (* set_secondary_clock_state ) (int ) ;int (* set_secondary_pll_state ) (int ) ;int (* set_primary_clock_state ) (int ) ;int (* set_primary_pll_state ) (int ) ;int (* set_secondary_clock_source ) (int ,int) ;int (* set_primary_clock_source ) (int ,int) ;int (* set_engine_pll_state ) (int ) ;} ;
struct TYPE_18__ {int table_length; TYPE_3__* io_reg_table; } ;
struct TYPE_17__ {scalar_t__ iga_path; void* display_method; } ;
struct TYPE_16__ {struct fb_var_screeninfo var; TYPE_5__ fix; } ;
struct TYPE_15__ {struct fb_var_screeninfo var; TYPE_4__ fix; } ;


 int CR02 ;
 int CRT_Device ;
 int DVI_Device ;
 scalar_t__ IGA1 ;
 scalar_t__ IGA2 ;
 void* LCD_CENTERING ;
 scalar_t__ UNICHROME_CLE266 ;
 scalar_t__ UNICHROME_CX700 ;
 scalar_t__ UNICHROME_K400 ;
 int VIACR ;
 int VIA_CLKSRC_X1 ;
 int VIA_CRT ;
 int VIA_STATE_OFF ;
 int VIA_STATE_ON ;
 TYPE_14__ clock ;
 int device_off () ;
 int device_on () ;
 int device_screen_off () ;
 int device_screen_on () ;
 int disable_second_display_channel () ;
 int enable_second_display_channel () ;
 int get_sync (struct fb_var_screeninfo*) ;
 int hw_init () ;
 TYPE_13__* res_patch_table ;
 int set_display_channel () ;
 int stub1 (int ) ;
 int stub10 (int ) ;
 int stub11 (int ) ;
 int stub12 (int ) ;
 int stub13 (int ) ;
 int stub14 (int ) ;
 int stub15 (int ) ;
 int stub2 (int ,int) ;
 int stub3 (int ,int) ;
 int stub4 (int ) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int stub7 (int ) ;
 int stub8 (int ) ;
 int stub9 (int ) ;
 int via_set_primary_color_depth (int ) ;
 int via_set_primary_pitch (int ) ;
 int via_set_secondary_color_depth (int ) ;
 int via_set_secondary_pitch (int ) ;
 int via_set_source (int,scalar_t__) ;
 int via_set_state (int,int ) ;
 int via_set_sync_polarity (int,int ) ;
 scalar_t__ viafb_CRT_ON ;
 scalar_t__ viafb_DVI_ON ;
 int viafb_DeviceStatus ;
 scalar_t__ viafb_LCD2_ON ;
 scalar_t__ viafb_LCD_ON ;
 scalar_t__ viafb_SAMM_ON ;
 scalar_t__ viafb_dual_fb ;
 int viafb_dvi_set_mode (struct fb_var_screeninfo*,int,int,scalar_t__) ;
 int viafb_fill_crtc_timing (struct fb_var_screeninfo*,int,int,scalar_t__) ;
 int viafb_fill_var_timing_info (struct fb_var_screeninfo*,int ) ;
 int viafb_get_best_mode (int ,int ,int ) ;
 int viafb_hotplug ;
 int viafb_hotplug_Xres ;
 int viafb_hotplug_Yres ;
 int viafb_hotplug_bpp ;
 int viafb_hotplug_refresh ;
 int viafb_lcd_set_mode (struct fb_var_screeninfo*,int,int,TYPE_12__*,int *) ;
 int viafb_lock_crt () ;
 scalar_t__ viafb_read_reg (int ,int ) ;
 int viafb_refresh ;
 int viafb_refresh1 ;
 int viafb_second_xres ;
 int viafb_second_yres ;
 int viafb_unlock_crt () ;
 int viafb_write_reg (int ,int ,scalar_t__) ;
 int viafb_write_reg_mask (int ,int,int ,int ) ;
 TYPE_11__* viafbinfo ;
 TYPE_10__* viafbinfo1 ;
 TYPE_9__* viaparinfo ;
 TYPE_8__* viaparinfo1 ;

int viafb_setmode(void)
{
 int j, cxres = 0, cyres = 0;
 int port;
 u32 devices = viaparinfo->shared->iga1_devices
  | viaparinfo->shared->iga2_devices;
 u8 value, index, mask;
 struct fb_var_screeninfo var2;

 device_screen_off();
 device_off();
 via_set_state(devices, VIA_STATE_OFF);

 hw_init();



 if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CLE266
  || viaparinfo->chip_info->gfx_chip_name == UNICHROME_K400)
  && viafbinfo->var.xres == 1024 && viafbinfo->var.yres == 768) {
  for (j = 0; j < res_patch_table[0].table_length; j++) {
   index = res_patch_table[0].io_reg_table[j].index;
   port = res_patch_table[0].io_reg_table[j].port;
   value = res_patch_table[0].io_reg_table[j].value;
   mask = res_patch_table[0].io_reg_table[j].mask;
   viafb_write_reg_mask(index, port, value, mask);
  }
 }

 via_set_primary_pitch(viafbinfo->fix.line_length);
 via_set_secondary_pitch(viafb_dual_fb ? viafbinfo1->fix.line_length
  : viafbinfo->fix.line_length);
 via_set_primary_color_depth(viaparinfo->depth);
 via_set_secondary_color_depth(viafb_dual_fb ? viaparinfo1->depth
  : viaparinfo->depth);
 via_set_source(viaparinfo->shared->iga1_devices, IGA1);
 via_set_source(viaparinfo->shared->iga2_devices, IGA2);
 if (viaparinfo->shared->iga2_devices)
  enable_second_display_channel();
 else
  disable_second_display_channel();





 if (viafb_dual_fb) {
  var2 = viafbinfo1->var;
 } else if (viafb_SAMM_ON) {
  viafb_fill_var_timing_info(&var2, viafb_get_best_mode(
   viafb_second_xres, viafb_second_yres, viafb_refresh1));
  cxres = viafbinfo->var.xres;
  cyres = viafbinfo->var.yres;
  var2.bits_per_pixel = viafbinfo->var.bits_per_pixel;
 }


 if (viafb_CRT_ON) {
  if (viaparinfo->shared->iga2_devices & VIA_CRT
   && viafb_SAMM_ON)
   viafb_fill_crtc_timing(&var2, cxres, cyres, IGA2);
  else
   viafb_fill_crtc_timing(&viafbinfo->var, 0, 0,
    (viaparinfo->shared->iga1_devices & VIA_CRT)
    ? IGA1 : IGA2);




  if (viafbinfo->var.xres % 8) {
   viafb_unlock_crt();
   viafb_write_reg(CR02, VIACR,
    viafb_read_reg(VIACR, CR02) - 1);
   viafb_lock_crt();
  }
 }

 if (viafb_DVI_ON) {
  if (viaparinfo->shared->tmds_setting_info.iga_path == IGA2
   && viafb_SAMM_ON)
   viafb_dvi_set_mode(&var2, cxres, cyres, IGA2);
  else
   viafb_dvi_set_mode(&viafbinfo->var, 0, 0,
    viaparinfo->tmds_setting_info->iga_path);
 }

 if (viafb_LCD_ON) {
  if (viafb_SAMM_ON &&
   (viaparinfo->lvds_setting_info->iga_path == IGA2)) {
   viafb_lcd_set_mode(&var2, cxres, cyres,
    viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
  } else {

   if (viaparinfo->lvds_setting_info->iga_path == IGA1) {
    viaparinfo->lvds_setting_info->display_method =
        LCD_CENTERING;
   }
   viafb_lcd_set_mode(&viafbinfo->var, 0, 0,
    viaparinfo->lvds_setting_info,
    &viaparinfo->chip_info->lvds_chip_info);
  }
 }
 if (viafb_LCD2_ON) {
  if (viafb_SAMM_ON &&
   (viaparinfo->lvds_setting_info2->iga_path == IGA2)) {
   viafb_lcd_set_mode(&var2, cxres, cyres,
    viaparinfo->lvds_setting_info2,
    &viaparinfo->chip_info->lvds_chip_info2);
  } else {

   if (viaparinfo->lvds_setting_info2->iga_path == IGA1) {
    viaparinfo->lvds_setting_info2->display_method =
        LCD_CENTERING;
   }
   viafb_lcd_set_mode(&viafbinfo->var, 0, 0,
    viaparinfo->lvds_setting_info2,
    &viaparinfo->chip_info->lvds_chip_info2);
  }
 }

 if ((viaparinfo->chip_info->gfx_chip_name == UNICHROME_CX700)
     && (viafb_LCD_ON || viafb_DVI_ON))
  set_display_channel();


 if (!viafb_hotplug) {
  viafb_hotplug_Xres = viafbinfo->var.xres;
  viafb_hotplug_Yres = viafbinfo->var.yres;
  viafb_hotplug_bpp = viafbinfo->var.bits_per_pixel;
  viafb_hotplug_refresh = viafb_refresh;

  if (viafb_DVI_ON)
   viafb_DeviceStatus = DVI_Device;
  else
   viafb_DeviceStatus = CRT_Device;
 }
 device_on();
 if (!viafb_SAMM_ON)
  via_set_sync_polarity(devices, get_sync(&viafbinfo->var));
 else {
  via_set_sync_polarity(viaparinfo->shared->iga1_devices,
   get_sync(&viafbinfo->var));
  via_set_sync_polarity(viaparinfo->shared->iga2_devices,
   get_sync(&var2));
 }

 clock.set_engine_pll_state(VIA_STATE_ON);
 clock.set_primary_clock_source(VIA_CLKSRC_X1, 1);
 clock.set_secondary_clock_source(VIA_CLKSRC_X1, 1);







 if (viaparinfo->shared->iga1_devices) {
  clock.set_primary_pll_state(VIA_STATE_ON);
  clock.set_primary_clock_state(VIA_STATE_ON);
 } else {
  clock.set_primary_pll_state(VIA_STATE_OFF);
  clock.set_primary_clock_state(VIA_STATE_OFF);
 }

 if (viaparinfo->shared->iga2_devices) {
  clock.set_secondary_pll_state(VIA_STATE_ON);
  clock.set_secondary_clock_state(VIA_STATE_ON);
 } else {
  clock.set_secondary_pll_state(VIA_STATE_OFF);
  clock.set_secondary_clock_state(VIA_STATE_OFF);
 }


 via_set_state(devices, VIA_STATE_ON);
 device_screen_on();
 return 1;
}
