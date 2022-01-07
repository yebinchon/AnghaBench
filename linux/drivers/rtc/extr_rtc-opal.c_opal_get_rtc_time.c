
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 scalar_t__ OPAL_BUSY_EVENT ;
 scalar_t__ OPAL_HARDWARE ;
 scalar_t__ OPAL_INTERNAL_ERROR ;
 scalar_t__ OPAL_SUCCESS ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int msleep (int) ;
 int opal_poll_events (int *) ;
 scalar_t__ opal_rtc_read (int *,int *) ;
 int opal_to_tm (int ,int ,struct rtc_time*) ;

__attribute__((used)) static int opal_get_rtc_time(struct device *dev, struct rtc_time *tm)
{
 s64 rc = OPAL_BUSY;
 int retries = 10;
 u32 y_m_d;
 u64 h_m_s_ms;
 __be32 __y_m_d;
 __be64 __h_m_s_ms;

 while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
  rc = opal_rtc_read(&__y_m_d, &__h_m_s_ms);
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

 if (rc != OPAL_SUCCESS)
  return -EIO;

 y_m_d = be32_to_cpu(__y_m_d);
 h_m_s_ms = be64_to_cpu(__h_m_s_ms);
 opal_to_tm(y_m_d, h_m_s_ms, tm);

 return 0;
}
