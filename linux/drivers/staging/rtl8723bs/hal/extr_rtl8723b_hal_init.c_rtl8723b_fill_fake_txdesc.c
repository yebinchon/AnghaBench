
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct tx_desc {int dummy; } ;
struct TYPE_2__ {int dot11PrivacyAlgrthm; } ;
struct adapter {TYPE_1__ securitypriv; } ;


 int DESC8723B_RATE1M ;
 int QSLT_MGNT ;
 int SET_TX_DESC_BT_INT_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_FIRST_SEG_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_HWSEQ_EN_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_HWSEQ_SEL_8723B (scalar_t__*,int ) ;
 int SET_TX_DESC_LAST_SEG_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_NAV_USE_HDR_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_OFFSET_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_OWN_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_PKT_SIZE_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_QUEUE_SEL_8723B (scalar_t__*,int ) ;
 int SET_TX_DESC_SEC_TYPE_8723B (scalar_t__*,int) ;
 int SET_TX_DESC_TX_RATE_8723B (scalar_t__*,int ) ;
 int SET_TX_DESC_USE_RATE_8723B (scalar_t__*,int) ;
 int TXDESC_SIZE ;






 int memset (scalar_t__*,int ,int ) ;
 int rtl8723b_cal_txdesc_chksum (struct tx_desc*) ;

void rtl8723b_fill_fake_txdesc(
 struct adapter *padapter,
 u8 *pDesc,
 u32 BufferLen,
 u8 IsPsPoll,
 u8 IsBTQosNull,
 u8 bDataFrame
)
{

 memset(pDesc, 0, TXDESC_SIZE);

 SET_TX_DESC_FIRST_SEG_8723B(pDesc, 1);
 SET_TX_DESC_LAST_SEG_8723B(pDesc, 1);

 SET_TX_DESC_OFFSET_8723B(pDesc, 0x28);

 SET_TX_DESC_PKT_SIZE_8723B(pDesc, BufferLen);
 SET_TX_DESC_QUEUE_SEL_8723B(pDesc, QSLT_MGNT);


 if (IsPsPoll) {
  SET_TX_DESC_NAV_USE_HDR_8723B(pDesc, 1);
 } else {
  SET_TX_DESC_HWSEQ_EN_8723B(pDesc, 1);
  SET_TX_DESC_HWSEQ_SEL_8723B(pDesc, 0);
 }

 if (IsBTQosNull) {
  SET_TX_DESC_BT_INT_8723B(pDesc, 1);
 }

 SET_TX_DESC_USE_RATE_8723B(pDesc, 1);
 SET_TX_DESC_OWN_8723B((u8 *)pDesc, 1);

 SET_TX_DESC_TX_RATE_8723B(pDesc, DESC8723B_RATE1M);




 if (bDataFrame) {
  u32 EncAlg;

  EncAlg = padapter->securitypriv.dot11PrivacyAlgrthm;
  switch (EncAlg) {
  case 132:
   SET_TX_DESC_SEC_TYPE_8723B(pDesc, 0x0);
   break;
  case 128:
  case 129:
  case 130:
   SET_TX_DESC_SEC_TYPE_8723B(pDesc, 0x1);
   break;
  case 131:
   SET_TX_DESC_SEC_TYPE_8723B(pDesc, 0x2);
   break;
  case 133:
   SET_TX_DESC_SEC_TYPE_8723B(pDesc, 0x3);
   break;
  default:
   SET_TX_DESC_SEC_TYPE_8723B(pDesc, 0x0);
   break;
  }
 }



 rtl8723b_cal_txdesc_chksum((struct tx_desc *)pDesc);
}
