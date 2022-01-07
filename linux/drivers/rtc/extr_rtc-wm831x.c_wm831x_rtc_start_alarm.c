
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_rtc {int alarm_enabled; int wm831x; } ;


 int WM831X_RTC_ALM_ENA ;
 int WM831X_RTC_CONTROL ;
 int wm831x_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int wm831x_rtc_start_alarm(struct wm831x_rtc *wm831x_rtc)
{
 wm831x_rtc->alarm_enabled = 1;

 return wm831x_set_bits(wm831x_rtc->wm831x, WM831X_RTC_CONTROL,
          WM831X_RTC_ALM_ENA, WM831X_RTC_ALM_ENA);
}
