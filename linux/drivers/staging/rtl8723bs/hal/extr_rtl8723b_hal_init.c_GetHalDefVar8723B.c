
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int wifi_spec; } ;
struct adapter {TYPE_1__ registrypriv; } ;
typedef enum HAL_DEF_VARIABLE { ____Placeholder_HAL_DEF_VARIABLE } HAL_DEF_VARIABLE ;


 int DBG_8192C (char*,int,...) ;
 int DRVINFO_SZ ;
 int GetHalDefVar (struct adapter*,int,void*) ;
 int HDATA_RATE (int) ;


 int MAX_AMPDU_FACTOR_16K ;
 int MAX_RECVBUF_SZ ;
 int REG_HMEBOX_DBG_2_8723B ;
 int RXDESC_SIZE ;
 int TX_PAGE_BOUNDARY_8723B ;
 int WMM_NORMAL_TX_PAGE_BOUNDARY_8723B ;
 int _SUCCESS ;
 int msleep (int) ;
 int rtw_read32 (struct adapter*,int) ;
 int rtw_write32 (struct adapter*,int ,int) ;

u8 GetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
{
 u8 bResult;

 bResult = _SUCCESS;

 switch (variable) {
 case 136:
  *((u32 *)pval) = MAX_RECVBUF_SZ;
  break;

 case 134:
  *((u32 *)pval) = RXDESC_SIZE + DRVINFO_SZ*8;
  break;

 case 128:



  *(u32 *)pval = MAX_AMPDU_FACTOR_16K;
  break;
 case 132:
 case 135:
  *((u8 *)pval) = 0;
  break;
 case 130:
  *((u8 *)pval) = 0;
  break;
 case 133:
  *((u8 *)pval) = 1;
  break;
 case 138:
 case 139:
  *((u8 *)pval) = 0;
  break;

 case 129:
  {
   u8 mac_id = *(u8 *)pval;
   u32 cmd;
   u32 ra_info1, ra_info2;
   u32 rate_mask1, rate_mask2;
   u8 curr_tx_rate, curr_tx_sgi, hight_rate, lowest_rate;

   DBG_8192C("============ RA status check  Mac_id:%d ===================\n", mac_id);

   cmd = 0x40000100 | mac_id;
   rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
   msleep(10);
   ra_info1 = rtw_read32(padapter, 0x2F0);
   curr_tx_rate = ra_info1&0x7F;
   curr_tx_sgi = (ra_info1>>7)&0x01;
   DBG_8192C("[ ra_info1:0x%08x ] =>cur_tx_rate = %s, cur_sgi:%d, PWRSTS = 0x%02x \n",
    ra_info1,
    HDATA_RATE(curr_tx_rate),
    curr_tx_sgi,
    (ra_info1>>8) & 0x07);

   cmd = 0x40000400 | mac_id;
   rtw_write32(padapter, REG_HMEBOX_DBG_2_8723B, cmd);
   msleep(10);
   ra_info1 = rtw_read32(padapter, 0x2F0);
   ra_info2 = rtw_read32(padapter, 0x2F4);
   rate_mask1 = rtw_read32(padapter, 0x2F8);
   rate_mask2 = rtw_read32(padapter, 0x2FC);
   hight_rate = ra_info2&0xFF;
   lowest_rate = (ra_info2>>8) & 0xFF;

   DBG_8192C("[ ra_info1:0x%08x ] =>RSSI =%d, BW_setting = 0x%02x, DISRA = 0x%02x, VHT_EN = 0x%02x\n",
    ra_info1,
    ra_info1&0xFF,
    (ra_info1>>8) & 0xFF,
    (ra_info1>>16) & 0xFF,
    (ra_info1>>24) & 0xFF);

   DBG_8192C("[ ra_info2:0x%08x ] =>hight_rate =%s, lowest_rate =%s, SGI = 0x%02x, RateID =%d\n",
    ra_info2,
    HDATA_RATE(hight_rate),
    HDATA_RATE(lowest_rate),
    (ra_info2>>16) & 0xFF,
    (ra_info2>>24) & 0xFF);

   DBG_8192C("rate_mask2 = 0x%08x, rate_mask1 = 0x%08x\n", rate_mask2, rate_mask1);

  }
  break;

 case 131:
  if (!padapter->registrypriv.wifi_spec) {
   *(u8 *)pval = TX_PAGE_BOUNDARY_8723B;
  } else {
   *(u8 *)pval = WMM_NORMAL_TX_PAGE_BOUNDARY_8723B;
  }
  break;

 case 137:
  *(u8 *)pval = 1;
  break;

 default:
  bResult = GetHalDefVar(padapter, variable, pval);
  break;
 }

 return bResult;
}
