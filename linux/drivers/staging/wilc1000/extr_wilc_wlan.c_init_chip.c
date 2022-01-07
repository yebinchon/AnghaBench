
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wilc_vif {struct wilc* wilc; } ;
struct wilc {TYPE_1__* hif_func; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* hif_read_reg ) (struct wilc*,int,int*) ;int (* hif_write_reg ) (struct wilc*,int,int) ;} ;


 int BIT (int ) ;
 int WILC_BUS_ACQUIRE_ONLY ;
 int WILC_BUS_RELEASE_ONLY ;
 int acquire_bus (struct wilc*,int ) ;
 int netdev_err (struct net_device*,char*) ;
 struct wilc_vif* netdev_priv (struct net_device*) ;
 int release_bus (struct wilc*,int ) ;
 int stub1 (struct wilc*,int,int*) ;
 int stub2 (struct wilc*,int,int) ;
 int stub3 (struct wilc*,int,int) ;
 int wilc_get_chipid (struct wilc*,int) ;

__attribute__((used)) static u32 init_chip(struct net_device *dev)
{
 u32 chipid;
 u32 reg, ret = 0;
 struct wilc_vif *vif = netdev_priv(dev);
 struct wilc *wilc = vif->wilc;

 acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);

 chipid = wilc_get_chipid(wilc, 1);

 if ((chipid & 0xfff) != 0xa0) {
  ret = wilc->hif_func->hif_read_reg(wilc, 0x1118, &reg);
  if (!ret) {
   netdev_err(dev, "fail read reg 0x1118\n");
   goto release;
  }
  reg |= BIT(0);
  ret = wilc->hif_func->hif_write_reg(wilc, 0x1118, reg);
  if (!ret) {
   netdev_err(dev, "fail write reg 0x1118\n");
   goto release;
  }
  ret = wilc->hif_func->hif_write_reg(wilc, 0xc0000, 0x71);
  if (!ret) {
   netdev_err(dev, "fail write reg 0xc0000\n");
   goto release;
  }
 }

release:
 release_bus(wilc, WILC_BUS_RELEASE_ONLY);

 return ret;
}
