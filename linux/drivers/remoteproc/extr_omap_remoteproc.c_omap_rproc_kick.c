
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct omap_rproc* priv; } ;
struct omap_rproc {int mbox; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int) ;
 int mbox_send_message (int ,void*) ;

__attribute__((used)) static void omap_rproc_kick(struct rproc *rproc, int vqid)
{
 struct omap_rproc *oproc = rproc->priv;
 struct device *dev = rproc->dev.parent;
 int ret;


 ret = mbox_send_message(oproc->mbox, (void *)vqid);
 if (ret < 0)
  dev_err(dev, "failed to send mailbox message, status = %d\n",
   ret);
}
