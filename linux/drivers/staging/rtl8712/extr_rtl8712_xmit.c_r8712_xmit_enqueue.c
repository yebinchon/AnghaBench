
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int * pkt; } ;
struct _adapter {int dummy; } ;


 int _FAIL ;
 int _SUCCESS ;
 scalar_t__ r8712_xmit_classifier (struct _adapter*,struct xmit_frame*) ;

int r8712_xmit_enqueue(struct _adapter *padapter, struct xmit_frame *pxmitframe)
{
 if (r8712_xmit_classifier(padapter, pxmitframe)) {
  pxmitframe->pkt = ((void*)0);
  return _FAIL;
 }
 return _SUCCESS;
}
