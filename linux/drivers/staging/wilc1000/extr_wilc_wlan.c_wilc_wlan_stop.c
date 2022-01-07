
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wilc_vif {int ndev; } ;
struct wilc {TYPE_1__* hif_func; } ;
struct TYPE_2__ {int (* hif_read_reg ) (struct wilc*,int ,int*) ;int (* hif_write_reg ) (struct wilc*,int ,int) ;} ;


 int BIT (int ) ;
 int EIO ;
 int WILC_ABORT_REQ_BIT ;
 int WILC_BUS_ACQUIRE_AND_WAKEUP ;
 int WILC_BUS_RELEASE_ALLOW_SLEEP ;
 int WILC_FW_HOST_COMM ;
 int WILC_GP_REG_0 ;
 int acquire_bus (struct wilc*,int ) ;
 int netdev_err (int ,char*) ;
 int release_bus (struct wilc*,int ) ;
 int stub1 (struct wilc*,int ,int*) ;
 int stub2 (struct wilc*,int ,int) ;
 int stub3 (struct wilc*,int ,int*) ;
 int stub4 (struct wilc*,int ,int) ;

int wilc_wlan_stop(struct wilc *wilc, struct wilc_vif *vif)
{
 u32 reg = 0;
 int ret;

 acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);

 ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
 if (!ret) {
  netdev_err(vif->ndev, "Error while reading reg\n");
  release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
  return -EIO;
 }

 ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
     (reg | WILC_ABORT_REQ_BIT));
 if (!ret) {
  netdev_err(vif->ndev, "Error while writing reg\n");
  release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
  return -EIO;
 }

 ret = wilc->hif_func->hif_read_reg(wilc, WILC_FW_HOST_COMM, &reg);
 if (!ret) {
  netdev_err(vif->ndev, "Error while reading reg\n");
  release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
  return -EIO;
 }
 reg = BIT(0);

 ret = wilc->hif_func->hif_write_reg(wilc, WILC_FW_HOST_COMM, reg);
 if (!ret) {
  netdev_err(vif->ndev, "Error while writing reg\n");
  release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
  return -EIO;
 }

 release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);

 return 0;
}
