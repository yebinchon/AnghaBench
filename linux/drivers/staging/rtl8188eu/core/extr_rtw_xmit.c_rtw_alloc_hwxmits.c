
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int bk_pending; int be_pending; int vi_pending; int vo_pending; struct hw_xmit* hwxmits; int hwxmit_entry; } ;
struct hw_xmit {int * sta_queue; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 int GFP_KERNEL ;
 int HWXMIT_ENTRY ;
 int _FAIL ;
 int _SUCCESS ;
 struct hw_xmit* kcalloc (int ,int,int ) ;

s32 rtw_alloc_hwxmits(struct adapter *padapter)
{
 struct hw_xmit *hwxmits;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

 pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;

 pxmitpriv->hwxmits = kcalloc(pxmitpriv->hwxmit_entry,
         sizeof(struct hw_xmit), GFP_KERNEL);
 if (!pxmitpriv->hwxmits)
  return _FAIL;

 hwxmits = pxmitpriv->hwxmits;

 hwxmits[0] .sta_queue = &pxmitpriv->vo_pending;
 hwxmits[1] .sta_queue = &pxmitpriv->vi_pending;
 hwxmits[2] .sta_queue = &pxmitpriv->be_pending;
 hwxmits[3] .sta_queue = &pxmitpriv->bk_pending;
 return _SUCCESS;
}
