
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int pxmitbuf; } ;
struct adapter {int xmitpriv; scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;


 int rtw_free_xmitbuf (int *,int ) ;
 int rtw_free_xmitframe (int *,struct xmit_frame*) ;
 int rtw_hal_mgnt_xmit (struct adapter*,struct xmit_frame*) ;

void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
{
 if (padapter->bSurpriseRemoved ||
  padapter->bDriverStopped) {
  rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
  rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
  return;
 }

 rtw_hal_mgnt_xmit(padapter, pmgntframe);
}
