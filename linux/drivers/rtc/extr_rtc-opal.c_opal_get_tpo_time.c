
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct rtc_wkalrm {int time; } ;
struct opal_msg {int dummy; } ;
struct device {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int ENOENT ;
 int ERESTARTSYS ;
 int OPAL_ASYNC_COMPLETION ;
 int OPAL_SUCCESS ;
 scalar_t__ be32_to_cpu (int ) ;
 int opal_async_get_token_interruptible () ;
 int opal_async_release_token (int) ;
 int opal_async_wait_response (int,struct opal_msg*) ;
 int opal_get_async_rc (struct opal_msg) ;
 int opal_to_tm (scalar_t__,int,int *) ;
 int opal_tpo_read (int,int *,int *) ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;

__attribute__((used)) static int opal_get_tpo_time(struct device *dev, struct rtc_wkalrm *alarm)
{
 __be32 __y_m_d, __h_m;
 struct opal_msg msg;
 int rc, token;
 u64 h_m_s_ms;
 u32 y_m_d;

 token = opal_async_get_token_interruptible();
 if (token < 0) {
  if (token != -ERESTARTSYS)
   pr_err("Failed to get the async token\n");

  return token;
 }

 rc = opal_tpo_read(token, &__y_m_d, &__h_m);
 if (rc != OPAL_ASYNC_COMPLETION) {
  rc = -EIO;
  goto exit;
 }

 rc = opal_async_wait_response(token, &msg);
 if (rc) {
  rc = -EIO;
  goto exit;
 }

 rc = opal_get_async_rc(msg);
 if (rc != OPAL_SUCCESS) {
  rc = -EIO;
  goto exit;
 }

 y_m_d = be32_to_cpu(__y_m_d);
 h_m_s_ms = ((u64)be32_to_cpu(__h_m) << 32);


 if (y_m_d == 0 && h_m_s_ms == 0) {
  pr_debug("No alarm is set\n");
  rc = -ENOENT;
  goto exit;
 } else {
  pr_debug("Alarm set to %x %llx\n", y_m_d, h_m_s_ms);
 }

 opal_to_tm(y_m_d, h_m_s_ms, &alarm->time);

exit:
 opal_async_release_token(token);
 return rc;
}
