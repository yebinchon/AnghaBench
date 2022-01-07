
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdw_msg {int dev_num; scalar_t__ page; } ;
struct sdw_defer {int dummy; } ;
struct sdw_bus {int dev; TYPE_1__* ops; } ;
struct TYPE_2__ {int xfer_msg_defer; } ;


 int ENODATA ;
 int ENOTSUPP ;
 int dev_err (int ,char*,int ,int) ;
 int do_transfer_defer (struct sdw_bus*,struct sdw_msg*,struct sdw_defer*) ;
 int sdw_reset_page (struct sdw_bus*,int ) ;

int sdw_transfer_defer(struct sdw_bus *bus, struct sdw_msg *msg,
         struct sdw_defer *defer)
{
 int ret;

 if (!bus->ops->xfer_msg_defer)
  return -ENOTSUPP;

 ret = do_transfer_defer(bus, msg, defer);
 if (ret != 0 && ret != -ENODATA)
  dev_err(bus->dev, "Defer trf on Slave %d failed:%d\n",
   msg->dev_num, ret);

 if (msg->page)
  sdw_reset_page(bus, msg->dev_num);

 return ret;
}
