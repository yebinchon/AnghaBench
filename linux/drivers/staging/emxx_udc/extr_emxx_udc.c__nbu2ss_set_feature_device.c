
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nbu2ss_udc {int remote_wakeup; } ;


 int EOPNOTSUPP ;
 int MAX_TEST_MODE_NUM ;
 int U2F_ENABLE ;



__attribute__((used)) static int _nbu2ss_set_feature_device(struct nbu2ss_udc *udc,
          u16 selector, u16 wIndex)
{
 int result = -EOPNOTSUPP;

 switch (selector) {
 case 129:
  if (wIndex == 0x0000) {
   udc->remote_wakeup = U2F_ENABLE;
   result = 0;
  }
  break;

 case 128:
  wIndex >>= 8;
  if (wIndex <= MAX_TEST_MODE_NUM)
   result = 0;
  break;

 default:
  break;
 }

 return result;
}
