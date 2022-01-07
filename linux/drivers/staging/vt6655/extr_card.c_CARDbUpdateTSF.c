
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct vnt_private {scalar_t__ PortOffset; } ;


 int CARDbGetCurrentTSF (struct vnt_private*,scalar_t__*) ;
 scalar_t__ CARDqGetTSFOffset (unsigned char,scalar_t__,scalar_t__) ;
 int MAC_REG_TFTCTL ;
 scalar_t__ MAC_REG_TSFOFST ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int TFTCTL_TSFSYNCEN ;
 int VNSvOutPortD (scalar_t__,int ) ;

bool CARDbUpdateTSF(struct vnt_private *priv, unsigned char byRxRate,
      u64 qwBSSTimestamp)
{
 u64 local_tsf;
 u64 qwTSFOffset = 0;

 CARDbGetCurrentTSF(priv, &local_tsf);

 if (qwBSSTimestamp != local_tsf) {
  qwTSFOffset = CARDqGetTSFOffset(byRxRate, qwBSSTimestamp,
      local_tsf);

  VNSvOutPortD(priv->PortOffset + MAC_REG_TSFOFST,
        (u32)qwTSFOffset);
  VNSvOutPortD(priv->PortOffset + MAC_REG_TSFOFST + 4,
        (u32)(qwTSFOffset >> 32));
  MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL,
         TFTCTL_TSFSYNCEN);
 }
 return 1;
}
