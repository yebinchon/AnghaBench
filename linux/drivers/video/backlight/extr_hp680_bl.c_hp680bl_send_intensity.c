
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int brightness; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;


 int DAC_LCD_BRIGHTNESS ;
 scalar_t__ FB_BLANK_UNBLANK ;
 int HD64461_GPBDR ;
 int HD64461_GPBDR_LCDOFF ;
 int bl_lock ;
 int current_intensity ;
 scalar_t__ hp680bl_suspended ;
 int inw (int ) ;
 int outw (int ,int ) ;
 int sh_dac_disable (int ) ;
 int sh_dac_enable (int ) ;
 int sh_dac_output (scalar_t__,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hp680bl_send_intensity(struct backlight_device *bd)
{
 unsigned long flags;
 u16 v;
 int intensity = bd->props.brightness;

 if (bd->props.power != FB_BLANK_UNBLANK)
  intensity = 0;
 if (bd->props.fb_blank != FB_BLANK_UNBLANK)
  intensity = 0;
 if (hp680bl_suspended)
  intensity = 0;

 spin_lock_irqsave(&bl_lock, flags);
 if (intensity && current_intensity == 0) {
  sh_dac_enable(DAC_LCD_BRIGHTNESS);
  v = inw(HD64461_GPBDR);
  v &= ~HD64461_GPBDR_LCDOFF;
  outw(v, HD64461_GPBDR);
  sh_dac_output(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
 } else if (intensity == 0 && current_intensity != 0) {
  sh_dac_output(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
  sh_dac_disable(DAC_LCD_BRIGHTNESS);
  v = inw(HD64461_GPBDR);
  v |= HD64461_GPBDR_LCDOFF;
  outw(v, HD64461_GPBDR);
 } else if (intensity) {
  sh_dac_output(255-(u8)intensity, DAC_LCD_BRIGHTNESS);
 }
 spin_unlock_irqrestore(&bl_lock, flags);

 current_intensity = intensity;
}
