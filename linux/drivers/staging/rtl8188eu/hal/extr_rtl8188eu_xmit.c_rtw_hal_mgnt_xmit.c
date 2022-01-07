
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int frag_len; } ;
struct xmit_frame {int dummy; } ;
struct adapter {int pmondev; struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 int rtl88eu_mon_xmit_hook (int ,struct xmit_frame*,int ) ;
 int rtw_dump_xframe (struct adapter*,struct xmit_frame*) ;

s32 rtw_hal_mgnt_xmit(struct adapter *adapt, struct xmit_frame *pmgntframe)
{
 struct xmit_priv *xmitpriv = &adapt->xmitpriv;

 rtl88eu_mon_xmit_hook(adapt->pmondev, pmgntframe, xmitpriv->frag_len);
 return rtw_dump_xframe(adapt, pmgntframe);
}
