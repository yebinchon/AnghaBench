
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int BBbWriteEmbedded (struct vnt_private*,int,int) ;

void
BBvSetDeepSleep(struct vnt_private *priv, unsigned char byLocalID)
{
 BBbWriteEmbedded(priv, 0x0C, 0x17);
 BBbWriteEmbedded(priv, 0x0D, 0xB9);
}
