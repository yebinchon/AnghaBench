
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int dummy; } ;


 unsigned char ANT_A ;
 unsigned char ANT_B ;
 unsigned char ANT_DIVERSITY ;
 int BBbReadEmbedded (struct vnt_private*,int,unsigned char*) ;
 int BBbWriteEmbedded (struct vnt_private*,int,unsigned char) ;

void
BBvSetRxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
{
 unsigned char byBBRxConf;

 BBbReadEmbedded(priv, 0x0A, &byBBRxConf);
 if (byAntennaMode == ANT_DIVERSITY) {
  byBBRxConf |= 0x01;

 } else if (byAntennaMode == ANT_A) {
  byBBRxConf &= 0xFC;
 } else if (byAntennaMode == ANT_B) {
  byBBRxConf &= 0xFE;
  byBBRxConf |= 0x02;
 }
 BBbWriteEmbedded(priv, 0x0A, byBBRxConf);
}
