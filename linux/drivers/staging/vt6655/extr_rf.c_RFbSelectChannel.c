
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnt_private {int dummy; } ;






 int RFbAL2230SelectChannel (struct vnt_private*,int ) ;
 int s_bAL7230SelectChannel (struct vnt_private*,int ) ;

bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
        u16 byChannel)
{
 bool ret = 1;

 switch (byRFType) {
 case 131:
 case 129:
  ret = RFbAL2230SelectChannel(priv, byChannel);
  break;

 case 130:
  ret = s_bAL7230SelectChannel(priv, byChannel);
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
