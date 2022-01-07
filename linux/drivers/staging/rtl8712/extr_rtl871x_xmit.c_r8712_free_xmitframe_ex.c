
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int dummy; } ;
struct xmit_frame {scalar_t__ frame_tag; } ;


 scalar_t__ DATA_FRAMETAG ;
 int r8712_free_xmitframe (struct xmit_priv*,struct xmit_frame*) ;

void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
        struct xmit_frame *pxmitframe)
{
 if (pxmitframe == ((void*)0))
  return;
 if (pxmitframe->frame_tag == DATA_FRAMETAG)
  r8712_free_xmitframe(pxmitpriv, pxmitframe);
}
