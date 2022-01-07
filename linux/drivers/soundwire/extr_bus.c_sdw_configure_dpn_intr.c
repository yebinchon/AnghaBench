
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sdw_slave {TYPE_1__* bus; } ;
struct TYPE_2__ {int dev; } ;


 int SDW_DPN_INTMASK (int) ;
 int SDW_DPN_INT_PORT_READY ;
 int dev_err (int ,char*,int) ;
 int sdw_update (struct sdw_slave*,int ,int,int) ;

int sdw_configure_dpn_intr(struct sdw_slave *slave,
      int port, bool enable, int mask)
{
 u32 addr;
 int ret;
 u8 val = 0;

 addr = SDW_DPN_INTMASK(port);


 if (enable) {
  val |= mask;
  val |= SDW_DPN_INT_PORT_READY;
 } else {
  val &= ~(mask);
  val &= ~SDW_DPN_INT_PORT_READY;
 }

 ret = sdw_update(slave, addr, (mask | SDW_DPN_INT_PORT_READY), val);
 if (ret < 0)
  dev_err(slave->bus->dev,
   "SDW_DPN_INTMASK write failed:%d\n", val);

 return ret;
}
