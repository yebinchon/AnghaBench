
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {int modulation; } ;


 int RTLLIB_CCK_MODULATION ;
 int RTLLIB_CCK_RATE_LEN ;
 int RTLLIB_OFDM_MODULATION ;
 scalar_t__ RTLLIB_OFDM_RATE_LEN ;

__attribute__((used)) static unsigned int rtllib_MFIE_rate_len(struct rtllib_device *ieee)
{
 unsigned int rate_len = 0;

 if (ieee->modulation & RTLLIB_CCK_MODULATION)
  rate_len = RTLLIB_CCK_RATE_LEN + 2;

 if (ieee->modulation & RTLLIB_OFDM_MODULATION)

  rate_len += RTLLIB_OFDM_RATE_LEN + 2;

 return rate_len;
}
