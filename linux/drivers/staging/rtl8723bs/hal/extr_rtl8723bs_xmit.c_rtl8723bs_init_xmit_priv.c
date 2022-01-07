
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int SdioXmitTerminate; int SdioXmitStart; } ;
struct hal_com_data {int SdioTxFIFOFreePageLock; } ;
struct adapter {struct xmit_priv xmitpriv; } ;
typedef int s32 ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int _SUCCESS ;
 int init_completion (int *) ;
 int spin_lock_init (int *) ;

s32 rtl8723bs_init_xmit_priv(struct adapter *padapter)
{
 struct xmit_priv *xmitpriv = &padapter->xmitpriv;
 struct hal_com_data *phal;


 phal = GET_HAL_DATA(padapter);

 spin_lock_init(&phal->SdioTxFIFOFreePageLock);
 init_completion(&xmitpriv->SdioXmitStart);
 init_completion(&xmitpriv->SdioXmitTerminate);

 return _SUCCESS;
}
