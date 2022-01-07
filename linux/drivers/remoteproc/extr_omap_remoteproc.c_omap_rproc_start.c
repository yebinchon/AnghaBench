
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct rproc {int bootaddr; TYPE_1__ dev; struct omap_rproc* priv; } ;
struct TYPE_4__ {struct omap_rproc_pdata* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct omap_rproc_pdata {int (* device_enable ) (struct platform_device*) ;int mbox_name; int (* set_bootaddr ) (int ) ;} ;
struct mbox_client {int tx_block; int knows_txdone; int rx_callback; int * tx_done; struct device* dev; } ;
struct omap_rproc {int mbox; struct mbox_client client; } ;
struct device {int dummy; } ;


 int EBUSY ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ RP_MBOX_ECHO_REQUEST ;
 int dev_err (struct device*,char*,int) ;
 int mbox_free_channel (int ) ;
 int mbox_send_message (int ,void*) ;
 int omap_mbox_request_channel (struct mbox_client*,int ) ;
 int omap_rproc_mbox_callback ;
 int stub1 (int ) ;
 int stub2 (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int omap_rproc_start(struct rproc *rproc)
{
 struct omap_rproc *oproc = rproc->priv;
 struct device *dev = rproc->dev.parent;
 struct platform_device *pdev = to_platform_device(dev);
 struct omap_rproc_pdata *pdata = pdev->dev.platform_data;
 int ret;
 struct mbox_client *client = &oproc->client;

 if (pdata->set_bootaddr)
  pdata->set_bootaddr(rproc->bootaddr);

 client->dev = dev;
 client->tx_done = ((void*)0);
 client->rx_callback = omap_rproc_mbox_callback;
 client->tx_block = 0;
 client->knows_txdone = 0;

 oproc->mbox = omap_mbox_request_channel(client, pdata->mbox_name);
 if (IS_ERR(oproc->mbox)) {
  ret = -EBUSY;
  dev_err(dev, "mbox_request_channel failed: %ld\n",
   PTR_ERR(oproc->mbox));
  return ret;
 }
 ret = mbox_send_message(oproc->mbox, (void *)RP_MBOX_ECHO_REQUEST);
 if (ret < 0) {
  dev_err(dev, "mbox_send_message failed: %d\n", ret);
  goto put_mbox;
 }

 ret = pdata->device_enable(pdev);
 if (ret) {
  dev_err(dev, "omap_device_enable failed: %d\n", ret);
  goto put_mbox;
 }

 return 0;

put_mbox:
 mbox_free_channel(oproc->mbox);
 return ret;
}
