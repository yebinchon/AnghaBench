
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct TYPE_3__ {int qos_option; } ;
struct TYPE_4__ {TYPE_1__ qospriv; } ;
struct adapter {TYPE_2__ mlmepriv; } ;


 int _VENDOR_SPECIFIC_IE_ ;
 int _WMM_IE_Length_ ;
 int * rtw_set_ie (int *,int ,int ,unsigned char*,int*) ;

void rtw_build_wmm_ie_ht(struct adapter *padapter, u8 *out_ie, uint *pout_len)
{
 unsigned char WMM_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x00, 0x01, 0x00};
 int out_len;
 u8 *pframe;

 if (padapter->mlmepriv.qospriv.qos_option == 0) {
  out_len = *pout_len;
  pframe = rtw_set_ie(out_ie+out_len, _VENDOR_SPECIFIC_IE_,
       _WMM_IE_Length_, WMM_IE, pout_len);

  padapter->mlmepriv.qospriv.qos_option = 1;
 }
}
