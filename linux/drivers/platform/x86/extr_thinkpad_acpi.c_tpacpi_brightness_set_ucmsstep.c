
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int TP_CMOS_BRIGHTNESS_DOWN ;
 int TP_CMOS_BRIGHTNESS_UP ;
 scalar_t__ issue_thinkpad_cmos_command (int) ;
 unsigned int tpacpi_brightness_nvram_get () ;

__attribute__((used)) static int tpacpi_brightness_set_ucmsstep(unsigned int value)
{
 int cmos_cmd, inc;
 unsigned int current_value, i;

 current_value = tpacpi_brightness_nvram_get();

 if (value == current_value)
  return 0;

 cmos_cmd = (value > current_value) ?
   TP_CMOS_BRIGHTNESS_UP :
   TP_CMOS_BRIGHTNESS_DOWN;
 inc = (value > current_value) ? 1 : -1;

 for (i = current_value; i != value; i += inc)
  if (issue_thinkpad_cmos_command(cmos_cmd))
   return -EIO;

 return 0;
}
