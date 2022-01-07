
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
BBvSetTxAntennaMode(struct vnt_private *priv, unsigned char byAntennaMode)
{
 unsigned char byBBTxConf;

 BBbReadEmbedded(priv, 0x09, &byBBTxConf);
 if (byAntennaMode == ANT_DIVERSITY) {

  byBBTxConf |= 0x02;
 } else if (byAntennaMode == ANT_A) {

  byBBTxConf &= 0xF9;
 } else if (byAntennaMode == ANT_B) {
  byBBTxConf &= 0xFD;
  byBBTxConf |= 0x04;
 }
 BBbWriteEmbedded(priv, 0x09, byBBTxConf);
}
