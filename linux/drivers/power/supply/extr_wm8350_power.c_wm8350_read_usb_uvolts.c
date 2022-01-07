
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;


 int WM8350_AUXADC_USB ;
 int WM8350_AUX_COEFF ;
 int wm8350_read_auxadc (struct wm8350*,int ,int ,int ) ;

__attribute__((used)) static int wm8350_read_usb_uvolts(struct wm8350 *wm8350)
{
 return wm8350_read_auxadc(wm8350, WM8350_AUXADC_USB, 0, 0)
  * WM8350_AUX_COEFF;
}
