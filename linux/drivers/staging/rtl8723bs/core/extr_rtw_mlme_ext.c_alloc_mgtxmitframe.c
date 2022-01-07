
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_priv {int dummy; } ;
struct xmit_frame {int dummy; } ;


 struct xmit_frame* _alloc_mgtxmitframe (struct xmit_priv*,int) ;

inline struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv)
{
 return _alloc_mgtxmitframe(pxmitpriv, 0);
}
