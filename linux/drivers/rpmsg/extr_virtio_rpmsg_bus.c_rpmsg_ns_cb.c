
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct virtproc_info {TYPE_1__* vdev; } ;
struct rpmsg_ns_msg {char* name; int flags; int addr; } ;
struct rpmsg_device {int dummy; } ;
struct rpmsg_channel_info {int dst; int src; int name; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DUMP_PREFIX_NONE ;
 int EINVAL ;
 int RPMSG_ADDR_ANY ;
 int RPMSG_NAME_SIZE ;
 int RPMSG_NS_DESTROY ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,char*,char*,int ) ;
 int dynamic_hex_dump (char*,int ,int,int,void*,int,int) ;
 struct rpmsg_device* rpmsg_create_channel (struct virtproc_info*,struct rpmsg_channel_info*) ;
 int rpmsg_unregister_device (struct device*,struct rpmsg_channel_info*) ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int rpmsg_ns_cb(struct rpmsg_device *rpdev, void *data, int len,
         void *priv, u32 src)
{
 struct rpmsg_ns_msg *msg = data;
 struct rpmsg_device *newch;
 struct rpmsg_channel_info chinfo;
 struct virtproc_info *vrp = priv;
 struct device *dev = &vrp->vdev->dev;
 int ret;






 if (len != sizeof(*msg)) {
  dev_err(dev, "malformed ns msg (%d)\n", len);
  return -EINVAL;
 }







 if (rpdev) {
  dev_err(dev, "anomaly: ns ept has an rpdev handle\n");
  return -EINVAL;
 }


 msg->name[RPMSG_NAME_SIZE - 1] = '\0';

 dev_info(dev, "%sing channel %s addr 0x%x\n",
   msg->flags & RPMSG_NS_DESTROY ? "destroy" : "creat",
   msg->name, msg->addr);

 strncpy(chinfo.name, msg->name, sizeof(chinfo.name));
 chinfo.src = RPMSG_ADDR_ANY;
 chinfo.dst = msg->addr;

 if (msg->flags & RPMSG_NS_DESTROY) {
  ret = rpmsg_unregister_device(&vrp->vdev->dev, &chinfo);
  if (ret)
   dev_err(dev, "rpmsg_destroy_channel failed: %d\n", ret);
 } else {
  newch = rpmsg_create_channel(vrp, &chinfo);
  if (!newch)
   dev_err(dev, "rpmsg_create_channel failed\n");
 }

 return 0;
}
