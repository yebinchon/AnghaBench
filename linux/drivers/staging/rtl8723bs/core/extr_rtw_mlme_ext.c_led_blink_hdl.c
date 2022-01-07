
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
struct LedBlink_param {int dummy; } ;


 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;

u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct LedBlink_param *ledBlink_param;

 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 ledBlink_param = (struct LedBlink_param *)pbuf;
 return H2C_SUCCESS;
}
