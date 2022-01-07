
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {int * pkt; } ;
struct _adapter {int dummy; } ;


 int _SUCCESS ;
 int dump_xframe (struct _adapter*,struct xmit_frame*) ;
 int r8712_xmitframe_coalesce (struct _adapter*,int *,struct xmit_frame*) ;

void r8712_xmit_direct(struct _adapter *padapter, struct xmit_frame *pxmitframe)
{
 int res;

 res = r8712_xmitframe_coalesce(padapter, pxmitframe->pkt, pxmitframe);
 pxmitframe->pkt = ((void*)0);
 if (res == _SUCCESS)
  dump_xframe(padapter, pxmitframe);
}
