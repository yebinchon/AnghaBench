
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {unsigned char* abyBBVGA; unsigned char byBBVGACurrent; scalar_t__ bShortSlotTime; } ;


 int BBbReadEmbedded (struct vnt_private*,int,unsigned char*) ;
 int BBbWriteEmbedded (struct vnt_private*,int,unsigned char) ;

void BBvSetVGAGainOffset(struct vnt_private *priv, unsigned char byData)
{
 unsigned char byBBRxConf = 0;

 BBbWriteEmbedded(priv, 0xE7, byData);

 BBbReadEmbedded(priv, 0x0A, &byBBRxConf);

 if (byData == priv->abyBBVGA[0])
  byBBRxConf |= 0x20;
 else if (priv->bShortSlotTime)
  byBBRxConf &= 0xDF;
 else
  byBBRxConf |= 0x20;
 priv->byBBVGACurrent = byData;
 BBbWriteEmbedded(priv, 0x0A, byBBRxConf);
}
