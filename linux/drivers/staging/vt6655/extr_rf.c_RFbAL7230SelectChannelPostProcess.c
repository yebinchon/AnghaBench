
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vnt_private {int dummy; } ;


 scalar_t__ CB_MAX_CHANNEL_24G ;
 int IFRFbWriteEmbedded (struct vnt_private*,int ) ;
 int * dwAL7230InitTable ;
 int * dwAL7230InitTableAMode ;

bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
           u16 byOldChannel,
           u16 byNewChannel)
{
 bool ret;

 ret = 1;





 if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {

  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[5]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[7]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
 } else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {

  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[5]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[7]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[10]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[12]);
  ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[15]);
 }

 return ret;
}
