
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ s64 ;


 int EIO ;
 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 scalar_t__ OPAL_BUSY_EVENT ;
 scalar_t__ OPAL_HARDWARE ;
 scalar_t__ OPAL_INTERNAL_ERROR ;
 scalar_t__ OPAL_SUCCESS ;
 int msleep (int) ;
 int opal_poll_events (int *) ;
 scalar_t__ opal_rtc_write (int ,int ) ;
 int tm_to_opal (struct rtc_time*,int *,int *) ;

__attribute__((used)) static int opal_set_rtc_time(struct device *dev, struct rtc_time *tm)
{
 s64 rc = OPAL_BUSY;
 int retries = 10;
 u32 y_m_d = 0;
 u64 h_m_s_ms = 0;

 tm_to_opal(tm, &y_m_d, &h_m_s_ms);

 while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
  rc = opal_rtc_write(y_m_d, h_m_s_ms);
  if (rc == OPAL_BUSY_EVENT) {
   msleep(OPAL_BUSY_DELAY_MS);
   opal_poll_events(((void*)0));
  } else if (rc == OPAL_BUSY) {
   msleep(OPAL_BUSY_DELAY_MS);
  } else if (rc == OPAL_HARDWARE || rc == OPAL_INTERNAL_ERROR) {
   if (retries--) {
    msleep(10);
    rc = OPAL_BUSY;
   }
  }
 }

 return rc == OPAL_SUCCESS ? 0 : -EIO;
}
