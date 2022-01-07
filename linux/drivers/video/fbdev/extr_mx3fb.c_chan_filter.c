
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx3fb_platform_data {int dma_dev; } ;
struct dma_chan_request {scalar_t__ id; TYPE_1__* mx3fb; } ;
struct dma_chan {scalar_t__ chan_id; TYPE_2__* device; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct device* dev; } ;


 struct mx3fb_platform_data* dev_get_platdata (struct device*) ;
 int imx_dma_is_ipu (struct dma_chan*) ;

__attribute__((used)) static bool chan_filter(struct dma_chan *chan, void *arg)
{
 struct dma_chan_request *rq = arg;
 struct device *dev;
 struct mx3fb_platform_data *mx3fb_pdata;

 if (!imx_dma_is_ipu(chan))
  return 0;

 if (!rq)
  return 0;

 dev = rq->mx3fb->dev;
 mx3fb_pdata = dev_get_platdata(dev);

 return rq->id == chan->chan_id &&
  mx3fb_pdata->dma_dev == chan->device->dev;
}
