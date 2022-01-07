
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp8788 {int dummy; } ;


 int LP8788_RTC_UNLOCK ;
 int RTC_LATCH ;
 int RTC_UNLOCK ;
 int lp8788_write_byte (struct lp8788*,int ,int ) ;

__attribute__((used)) static void lp8788_rtc_unlock(struct lp8788 *lp)
{
 lp8788_write_byte(lp, LP8788_RTC_UNLOCK, RTC_UNLOCK);
 lp8788_write_byte(lp, LP8788_RTC_UNLOCK, RTC_LATCH);
}
