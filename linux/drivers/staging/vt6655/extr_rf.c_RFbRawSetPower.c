
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {unsigned char byMaxPwrLevel; int byRFType; } ;


 int BY_AL2230_REG_LEN ;
 int BY_AL7230_REG_LEN ;
 int IFREGCTL_REGW ;
 int IFRFbWriteEmbedded (struct vnt_private*,unsigned long) ;
 unsigned int RATE_11M ;



 unsigned long* dwAL2230PowerTable ;

bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
      unsigned int rate)
{
 bool ret = 1;
 unsigned long dwMax7230Pwr = 0;

 if (byPwr >= priv->byMaxPwrLevel)
  return 0;

 switch (priv->byRFType) {
 case 130:
  ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
  if (rate <= RATE_11M)
   ret &= IFRFbWriteEmbedded(priv, 0x0001B400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
  else
   ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);

  break;

 case 128:
  ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
  if (rate <= RATE_11M) {
   ret &= IFRFbWriteEmbedded(priv, 0x040C1400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
   ret &= IFRFbWriteEmbedded(priv, 0x00299B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
  } else {
   ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
   ret &= IFRFbWriteEmbedded(priv, 0x00099B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
  }

  break;

 case 129:



  dwMax7230Pwr = 0x080C0B00 | ((byPwr) << 12) |
   (BY_AL7230_REG_LEN << 3) | IFREGCTL_REGW;

  ret &= IFRFbWriteEmbedded(priv, dwMax7230Pwr);
  break;

 default:
  break;
 }
 return ret;
}
