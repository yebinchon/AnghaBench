
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int EINVAL ;
 int WM8350_DCDC1_FORCE_PWM ;
 int WM8350_DCDC1_FORCE_PWM_ENA ;
 int WM8350_DCDC3_FORCE_PWM ;
 int WM8350_DCDC4_FORCE_PWM ;
 int WM8350_DCDC6_FORCE_PWM ;




 int wm8350_clear_bits (struct wm8350*,int,int ) ;
 int wm8350_set_bits (struct wm8350*,int,int ) ;

__attribute__((used)) static int force_continuous_enable(struct wm8350 *wm8350, int dcdc, int enable)
{
 int reg = 0, ret;

 switch (dcdc) {
 case 131:
  reg = WM8350_DCDC1_FORCE_PWM;
  break;
 case 130:
  reg = WM8350_DCDC3_FORCE_PWM;
  break;
 case 129:
  reg = WM8350_DCDC4_FORCE_PWM;
  break;
 case 128:
  reg = WM8350_DCDC6_FORCE_PWM;
  break;
 default:
  return -EINVAL;
 }

 if (enable)
  ret = wm8350_set_bits(wm8350, reg,
   WM8350_DCDC1_FORCE_PWM_ENA);
 else
  ret = wm8350_clear_bits(wm8350, reg,
   WM8350_DCDC1_FORCE_PWM_ENA);
 return ret;
}
