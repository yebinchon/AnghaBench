
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {unsigned char* abyBBVGA; scalar_t__ bShortSlotTime; } ;


 int BBbReadEmbedded (struct vnt_private*,int,unsigned char*) ;
 int BBbWriteEmbedded (struct vnt_private*,int,unsigned char) ;

void
BBvSetShortSlotTime(struct vnt_private *priv)
{
 unsigned char byBBRxConf = 0;
 unsigned char byBBVGA = 0;

 BBbReadEmbedded(priv, 0x0A, &byBBRxConf);

 if (priv->bShortSlotTime)
  byBBRxConf &= 0xDF;
 else
  byBBRxConf |= 0x20;


 BBbReadEmbedded(priv, 0xE7, &byBBVGA);
 if (byBBVGA == priv->abyBBVGA[0])
  byBBRxConf |= 0x20;

 BBbWriteEmbedded(priv, 0x0A, byBBRxConf);
}
