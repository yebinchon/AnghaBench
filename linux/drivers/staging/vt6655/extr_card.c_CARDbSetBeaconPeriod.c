
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vnt_private {unsigned short wBeaconInterval; scalar_t__ PortOffset; } ;


 int CARDbGetCurrentTSF (struct vnt_private*,int*) ;
 int CARDqGetNextTBTT (int,unsigned short) ;
 scalar_t__ MAC_REG_BI ;
 scalar_t__ MAC_REG_NEXTTBTT ;
 int MAC_REG_TFTCTL ;
 int MACvRegBitsOn (scalar_t__,int ,int ) ;
 int TFTCTL_TBTTSYNCEN ;
 int VNSvOutPortD (scalar_t__,int ) ;
 int VNSvOutPortW (scalar_t__,unsigned short) ;

bool CARDbSetBeaconPeriod(struct vnt_private *priv,
     unsigned short wBeaconInterval)
{
 u64 qwNextTBTT = 0;

 CARDbGetCurrentTSF(priv, &qwNextTBTT);

 qwNextTBTT = CARDqGetNextTBTT(qwNextTBTT, wBeaconInterval);


 VNSvOutPortW(priv->PortOffset + MAC_REG_BI, wBeaconInterval);
 priv->wBeaconInterval = wBeaconInterval;

 VNSvOutPortD(priv->PortOffset + MAC_REG_NEXTTBTT, (u32)qwNextTBTT);
 VNSvOutPortD(priv->PortOffset + MAC_REG_NEXTTBTT + 4,
       (u32)(qwNextTBTT >> 32));
 MACvRegBitsOn(priv->PortOffset, MAC_REG_TFTCTL, TFTCTL_TBTTSYNCEN);

 return 1;
}
