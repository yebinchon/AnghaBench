
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xmit_priv {int SdioXmitStart; int tx_drop; int lock; } ;
struct TYPE_4__ {int ether_type; int dhcp_pkt; int priority; int qsel; } ;
struct xmit_frame {scalar_t__ frame_tag; TYPE_1__ attrib; } ;
struct TYPE_5__ {scalar_t__ bBusyTraffic; } ;
struct TYPE_6__ {TYPE_2__ LinkDetectInfo; } ;
struct adapter {TYPE_3__ mlmepriv; struct xmit_priv xmitpriv; } ;
typedef scalar_t__ s32 ;


 scalar_t__ DATA_FRAMETAG ;
 int RT_TRACE (int ,int ,char*) ;
 scalar_t__ _SUCCESS ;
 int _drv_err_ ;
 int _module_hal_xmit_c_ ;
 int complete (int *) ;
 int rtw_free_xmitframe (struct xmit_priv*,struct xmit_frame*) ;
 int rtw_issue_addbareq_cmd (struct adapter*,struct xmit_frame*) ;
 scalar_t__ rtw_xmitframe_enqueue (struct adapter*,struct xmit_frame*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

s32 rtl8723bs_hal_xmit(
 struct adapter *padapter, struct xmit_frame *pxmitframe
)
{
 struct xmit_priv *pxmitpriv;
 s32 err;


 pxmitframe->attrib.qsel = pxmitframe->attrib.priority;
 pxmitpriv = &padapter->xmitpriv;

 if (
  (pxmitframe->frame_tag == DATA_FRAMETAG) &&
  (pxmitframe->attrib.ether_type != 0x0806) &&
  (pxmitframe->attrib.ether_type != 0x888e) &&
  (pxmitframe->attrib.dhcp_pkt != 1)
 ) {
  if (padapter->mlmepriv.LinkDetectInfo.bBusyTraffic)
   rtw_issue_addbareq_cmd(padapter, pxmitframe);
 }

 spin_lock_bh(&pxmitpriv->lock);
 err = rtw_xmitframe_enqueue(padapter, pxmitframe);
 spin_unlock_bh(&pxmitpriv->lock);
 if (err != _SUCCESS) {
  RT_TRACE(_module_hal_xmit_c_, _drv_err_, ("rtl8723bs_hal_xmit: enqueue xmitframe fail\n"));
  rtw_free_xmitframe(pxmitpriv, pxmitframe);

  pxmitpriv->tx_drop++;
  return 1;
 }

 complete(&pxmitpriv->SdioXmitStart);

 return 0;
}
