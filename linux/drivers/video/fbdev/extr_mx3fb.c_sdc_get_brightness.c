
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx3fb_data {int dummy; } ;


 int SDC_PWM_CTRL ;
 int mx3fb_read_reg (struct mx3fb_data*,int ) ;

__attribute__((used)) static u32 sdc_get_brightness(struct mx3fb_data *mx3fb)
{
 u32 brightness;

 brightness = mx3fb_read_reg(mx3fb, SDC_PWM_CTRL);
 brightness = (brightness >> 16) & 0xFF;

 return brightness;
}
