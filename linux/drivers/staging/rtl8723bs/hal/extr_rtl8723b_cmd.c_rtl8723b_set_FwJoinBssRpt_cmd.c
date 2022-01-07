
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;


 int RT_MEDIA_CONNECT ;
 int rtl8723b_download_rsvd_page (struct adapter*,int ) ;

void rtl8723b_set_FwJoinBssRpt_cmd(struct adapter *padapter, u8 mstatus)
{
 if (mstatus == 1)
  rtl8723b_download_rsvd_page(padapter, RT_MEDIA_CONNECT);
}
