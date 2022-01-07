
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_private {scalar_t__ dwDiagRefCount; unsigned char* abyCCKPwrTbl; unsigned char* abyOFDMPwrTbl; unsigned char byMaxPwrLevel; unsigned char byCurPwr; int byRFType; } ;


 int CB_MAX_CHANNEL ;
 int CB_MAX_CHANNEL_24G ;
 int RF_UW2452 ;
 int RFbRawSetPower (struct vnt_private*,unsigned char,unsigned int) ;

bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
{
 bool ret = 1;
 unsigned char byPwr = 0;
 unsigned char byDec = 0;

 if (priv->dwDiagRefCount != 0)
  return 1;

 if ((uCH < 1) || (uCH > CB_MAX_CHANNEL))
  return 0;

 switch (rate) {
 case 136:
 case 134:
 case 130:
 case 139:
  if (uCH > CB_MAX_CHANNEL_24G)
   return 0;

  byPwr = priv->abyCCKPwrTbl[uCH];
  break;
 case 129:
 case 128:
 case 138:
 case 137:
  byPwr = priv->abyOFDMPwrTbl[uCH];
  if (priv->byRFType == RF_UW2452)
   byDec = byPwr + 14;
  else
   byDec = byPwr + 10;

  if (byDec >= priv->byMaxPwrLevel)
   byDec = priv->byMaxPwrLevel - 1;

  byPwr = byDec;
  break;
 case 135:
 case 133:
 case 132:
 case 131:
  byPwr = priv->abyOFDMPwrTbl[uCH];
  break;
 }

 if (priv->byCurPwr == byPwr)
  return 1;

 ret = RFbRawSetPower(priv, byPwr, rate);
 if (ret)
  priv->byCurPwr = byPwr;

 return ret;
}
