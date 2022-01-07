
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrst_rtc {int dummy; } ;


 int RTC_CONTROL ;
 int mrst_checkintr (struct mrst_rtc*,unsigned char) ;
 unsigned char vrtc_cmos_read (int ) ;
 int vrtc_cmos_write (unsigned char,int ) ;

__attribute__((used)) static void mrst_irq_disable(struct mrst_rtc *mrst, unsigned char mask)
{
 unsigned char rtc_control;

 rtc_control = vrtc_cmos_read(RTC_CONTROL);
 rtc_control &= ~mask;
 vrtc_cmos_write(rtc_control, RTC_CONTROL);
 mrst_checkintr(mrst, rtc_control);
}
