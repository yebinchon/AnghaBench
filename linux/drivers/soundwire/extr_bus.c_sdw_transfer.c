
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_msg {int dev_num; scalar_t__ page; } ;
struct sdw_bus {int msg_lock; int dev; } ;


 int ENODATA ;
 int dev_err (int ,char*,int ,int) ;
 int do_transfer (struct sdw_bus*,struct sdw_msg*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdw_reset_page (struct sdw_bus*,int ) ;

int sdw_transfer(struct sdw_bus *bus, struct sdw_msg *msg)
{
 int ret;

 mutex_lock(&bus->msg_lock);

 ret = do_transfer(bus, msg);
 if (ret != 0 && ret != -ENODATA)
  dev_err(bus->dev, "trf on Slave %d failed:%d\n",
   msg->dev_num, ret);

 if (msg->page)
  sdw_reset_page(bus, msg->dev_num);

 mutex_unlock(&bus->msg_lock);

 return ret;
}
