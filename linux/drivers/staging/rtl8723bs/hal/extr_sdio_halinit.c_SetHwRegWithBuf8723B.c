
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int C2HPacketHandler_8723B (struct adapter*,int*,int) ;


__attribute__((used)) static void SetHwRegWithBuf8723B(struct adapter *padapter, u8 variable, u8 *pbuf, int len)
{
 switch (variable) {
 case 128:

  C2HPacketHandler_8723B(padapter, pbuf, len);
  break;
 default:
  break;
 }
}
