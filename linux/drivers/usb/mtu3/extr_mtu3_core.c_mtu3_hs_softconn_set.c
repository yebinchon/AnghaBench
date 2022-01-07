
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int dev; int mac_base; } ;


 int SOFT_CONN ;
 int SUSPENDM_ENABLE ;
 int U3D_POWER_MANAGEMENT ;
 int dev_dbg (int ,char*,int) ;
 int mtu3_clrbits (int ,int ,int) ;
 int mtu3_setbits (int ,int ,int) ;

__attribute__((used)) static inline void mtu3_hs_softconn_set(struct mtu3 *mtu, bool enable)
{
 if (enable) {
  mtu3_setbits(mtu->mac_base, U3D_POWER_MANAGEMENT,
   SOFT_CONN | SUSPENDM_ENABLE);
 } else {
  mtu3_clrbits(mtu->mac_base, U3D_POWER_MANAGEMENT,
   SOFT_CONN | SUSPENDM_ENABLE);
 }
 dev_dbg(mtu->dev, "SOFTCONN = %d\n", !!enable);
}
