
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;





 int LOBYTE (unsigned short) ;
 int MACvSetLoopbackMode (struct vnt_private*,int ) ;

void CARDvSetLoopbackMode(struct vnt_private *priv,
     unsigned short wLoopbackMode)
{
 switch (wLoopbackMode) {
 case 129:
 case 130:
 case 128:
  break;
 default:
  break;
 }

 MACvSetLoopbackMode(priv, LOBYTE(wLoopbackMode));

}
