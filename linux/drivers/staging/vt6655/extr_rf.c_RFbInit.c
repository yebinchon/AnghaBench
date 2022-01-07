
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnt_private {int byRFType; int byMaxPwrLevel; } ;


 int AL2230_PWR_IDX_LEN ;
 int AL7230_PWR_IDX_LEN ;




 int RFbAL2230Init (struct vnt_private*) ;
 int s_bAL7230Init (struct vnt_private*) ;

bool RFbInit(struct vnt_private *priv)
{
 bool ret = 1;

 switch (priv->byRFType) {
 case 131:
 case 129:
  priv->byMaxPwrLevel = AL2230_PWR_IDX_LEN;
  ret = RFbAL2230Init(priv);
  break;
 case 130:
  priv->byMaxPwrLevel = AL7230_PWR_IDX_LEN;
  ret = s_bAL7230Init(priv);
  break;
 case 128:
  ret = 1;
  break;
 default:
  ret = 0;
  break;
 }
 return ret;
}
