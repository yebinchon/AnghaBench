
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vnt_phy_field_swap {int field_write; int * swap; int field_read; } ;
typedef int u8 ;
struct vnt_private {int lock; scalar_t__ PortOffset; } ;


 int CARDwGetCCKControlRate (struct vnt_private*,int ) ;
 int CARDwGetOFDMControlRate (void*,int ) ;
 scalar_t__ MAC_REG_RSPINF_A_12 ;
 scalar_t__ MAC_REG_RSPINF_A_18 ;
 scalar_t__ MAC_REG_RSPINF_A_24 ;
 scalar_t__ MAC_REG_RSPINF_A_36 ;
 scalar_t__ MAC_REG_RSPINF_A_48 ;
 scalar_t__ MAC_REG_RSPINF_A_54 ;
 scalar_t__ MAC_REG_RSPINF_A_6 ;
 scalar_t__ MAC_REG_RSPINF_A_72 ;
 scalar_t__ MAC_REG_RSPINF_A_9 ;
 scalar_t__ MAC_REG_RSPINF_B_1 ;
 scalar_t__ MAC_REG_RSPINF_B_11 ;
 scalar_t__ MAC_REG_RSPINF_B_2 ;
 scalar_t__ MAC_REG_RSPINF_B_5 ;
 int MACvSelectPage0 (scalar_t__) ;
 int MACvSelectPage1 (scalar_t__) ;
 int MAKEWORD (unsigned char,unsigned char) ;
 int PK_TYPE_11B ;
 int RATE_11M ;
 int RATE_12M ;
 int RATE_18M ;
 int RATE_1M ;
 int RATE_24M ;
 int RATE_2M ;
 int RATE_36M ;
 int RATE_48M ;
 int RATE_54M ;
 int RATE_5M ;
 int RATE_6M ;
 int RATE_9M ;
 int VNSvOutPortD (scalar_t__,int ) ;
 int VNSvOutPortW (scalar_t__,int ) ;
 int s_vCalculateOFDMRParameter (int ,int ,unsigned char*,unsigned char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (int ,int ) ;
 int vnt_get_phy_field (struct vnt_private*,int,int ,int ,int *) ;

void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type)
{
 union vnt_phy_field_swap phy;
 unsigned char byTxRate, byRsvTime;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);


 MACvSelectPage1(priv->PortOffset);


 vnt_get_phy_field(priv, 14,
     CARDwGetCCKControlRate(priv, RATE_1M),
     PK_TYPE_11B, &phy.field_read);


 swap(phy.swap[0], phy.swap[1]);

 VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_1, phy.field_write);


 vnt_get_phy_field(priv, 14,
     CARDwGetCCKControlRate(priv, RATE_2M),
     PK_TYPE_11B, &phy.field_read);

 swap(phy.swap[0], phy.swap[1]);

 VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_2, phy.field_write);


 vnt_get_phy_field(priv, 14,
     CARDwGetCCKControlRate(priv, RATE_5M),
     PK_TYPE_11B, &phy.field_read);

 swap(phy.swap[0], phy.swap[1]);

 VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_5, phy.field_write);


 vnt_get_phy_field(priv, 14,
     CARDwGetCCKControlRate(priv, RATE_11M),
     PK_TYPE_11B, &phy.field_read);

 swap(phy.swap[0], phy.swap[1]);

 VNSvOutPortD(priv->PortOffset + MAC_REG_RSPINF_B_11, phy.field_write);


 s_vCalculateOFDMRParameter(RATE_6M,
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_6,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(RATE_9M,
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_9,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(RATE_12M,
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_12,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(RATE_18M,
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_18,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(RATE_24M,
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_24,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
          (void *)priv,
          RATE_36M),
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_36,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
          (void *)priv,
          RATE_48M),
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_48,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
          (void *)priv,
          RATE_54M),
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_54,
       MAKEWORD(byTxRate, byRsvTime));

 s_vCalculateOFDMRParameter(CARDwGetOFDMControlRate(
          (void *)priv,
          RATE_54M),
       bb_type,
       &byTxRate,
       &byRsvTime);
 VNSvOutPortW(priv->PortOffset + MAC_REG_RSPINF_A_72,
       MAKEWORD(byTxRate, byRsvTime));

 MACvSelectPage0(priv->PortOffset);

 spin_unlock_irqrestore(&priv->lock, flags);
}
