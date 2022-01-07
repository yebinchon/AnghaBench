
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc7301_priv {int dummy; } ;


 int ETIMEDOUT ;
 int RTC7301_CONTROL ;
 int RTC7301_CONTROL_BUSY ;
 int rtc7301_read (struct rtc7301_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int rtc7301_wait_while_busy(struct rtc7301_priv *priv)
{
 int retries = 100;

 while (retries-- > 0) {
  u8 val;

  val = rtc7301_read(priv, RTC7301_CONTROL);
  if (!(val & RTC7301_CONTROL_BUSY))
   return 0;

  udelay(300);
 }

 return -ETIMEDOUT;
}
