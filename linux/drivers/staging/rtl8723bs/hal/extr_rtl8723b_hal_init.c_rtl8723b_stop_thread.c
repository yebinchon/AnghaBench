
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int * SdioXmitThread; int SdioXmitTerminate; int SdioXmitStart; } ;
struct adapter {struct xmit_priv xmitpriv; } ;


 int complete (int *) ;
 int wait_for_completion (int *) ;

void rtl8723b_stop_thread(struct adapter *padapter)
{

 struct xmit_priv *xmitpriv = &padapter->xmitpriv;


 if (xmitpriv->SdioXmitThread) {
  complete(&xmitpriv->SdioXmitStart);
  wait_for_completion(&xmitpriv->SdioXmitTerminate);
  xmitpriv->SdioXmitThread = ((void*)0);
 }

}
