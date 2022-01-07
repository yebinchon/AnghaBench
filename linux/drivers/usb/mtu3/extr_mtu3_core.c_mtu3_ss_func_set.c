
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int dev; int mac_base; } ;


 int U3D_USB3_CONFIG ;
 int USB3_EN ;
 int dev_dbg (int ,char*,int) ;
 int mtu3_clrbits (int ,int ,int ) ;
 int mtu3_setbits (int ,int ,int ) ;

__attribute__((used)) static inline void mtu3_ss_func_set(struct mtu3 *mtu, bool enable)
{

 if (enable)
  mtu3_setbits(mtu->mac_base, U3D_USB3_CONFIG, USB3_EN);
 else
  mtu3_clrbits(mtu->mac_base, U3D_USB3_CONFIG, USB3_EN);

 dev_dbg(mtu->dev, "USB3_EN = %d\n", !!enable);
}
