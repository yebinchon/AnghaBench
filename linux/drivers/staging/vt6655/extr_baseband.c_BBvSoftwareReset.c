
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 int BBbWriteEmbedded (struct vnt_private*,int,int) ;

void
BBvSoftwareReset(struct vnt_private *priv)
{
 BBbWriteEmbedded(priv, 0x50, 0x40);
 BBbWriteEmbedded(priv, 0x50, 0);
 BBbWriteEmbedded(priv, 0x9C, 0x01);
 BBbWriteEmbedded(priv, 0x9C, 0);
}
