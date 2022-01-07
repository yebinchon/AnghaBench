
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_rproc {int * mbox_chan; } ;
struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct st_rproc* priv; } ;
struct device {int dummy; } ;


 int MBOX_MAX ;
 int MBOX_TX ;
 int ST_RPROC_MAX_VRING ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*,int) ;
 int mbox_send_message (int ,void*) ;

__attribute__((used)) static void st_rproc_kick(struct rproc *rproc, int vqid)
{
 struct st_rproc *ddata = rproc->priv;
 struct device *dev = rproc->dev.parent;
 int ret;


 if (WARN_ON(vqid >= ST_RPROC_MAX_VRING))
  return;

 ret = mbox_send_message(ddata->mbox_chan[vqid * MBOX_MAX + MBOX_TX],
    (void *)&vqid);
 if (ret < 0)
  dev_err(dev, "failed to send message via mbox: %d\n", ret);
}
