
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int kfree (int*) ;
 int memcpy (int*,int*,int ) ;
 int rtw_c2h_packet_wk_cmd (struct adapter*,int*,int ) ;
 int* rtw_zmalloc (int ) ;

__attribute__((used)) static void rtl8723bs_c2h_packet_handler(struct adapter *padapter,
      u8 *pbuf, u16 length)
{
 u8 *tmp = ((void*)0);
 u8 res = 0;

 if (length == 0)
  return;



 tmp = rtw_zmalloc(length);
 if (!tmp)
  return;

 memcpy(tmp, pbuf, length);

 res = rtw_c2h_packet_wk_cmd(padapter, tmp, length);

 if (!res)
  kfree(tmp);



 return;
}
