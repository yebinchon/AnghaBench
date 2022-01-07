
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int byRFType; } ;






void
RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI, long *pldBm)
{
 unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
 long b = (byCurrRSSI & 0x3F);
 long a = 0;
 unsigned char abyAIROHARF[4] = {0, 18, 0, 40};

 switch (priv->byRFType) {
 case 130:
 case 128:
 case 129:
  a = abyAIROHARF[byIdx];
  break;
 default:
  break;
 }

 *pldBm = -1 * (a + b * 2);
}
