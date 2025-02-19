
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {int wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;


 scalar_t__ REG_TDECTRL ;
 scalar_t__ REG_TRXFF_BNDY ;
 scalar_t__ REG_TXPKTBUF_BCNQ_BDNY_8723B ;
 scalar_t__ REG_TXPKTBUF_MGQ_BDNY_8723B ;
 scalar_t__ REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B ;
 int TX_PAGE_BOUNDARY_8723B ;
 int WMM_NORMAL_TX_PAGE_BOUNDARY_8723B ;
 int rtw_write8 (struct adapter*,scalar_t__,int ) ;

__attribute__((used)) static void _InitTxBufferBoundary(struct adapter *padapter)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;


 u8 txpktbuf_bndy;

 if (!pregistrypriv->wifi_spec) {
  txpktbuf_bndy = TX_PAGE_BOUNDARY_8723B;
 } else {

  txpktbuf_bndy = WMM_NORMAL_TX_PAGE_BOUNDARY_8723B;
 }

 rtw_write8(padapter, REG_TXPKTBUF_BCNQ_BDNY_8723B, txpktbuf_bndy);
 rtw_write8(padapter, REG_TXPKTBUF_MGQ_BDNY_8723B, txpktbuf_bndy);
 rtw_write8(padapter, REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B, txpktbuf_bndy);
 rtw_write8(padapter, REG_TRXFF_BNDY, txpktbuf_bndy);
 rtw_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
}
