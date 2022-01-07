
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_uio_private_data {int info; } ;
struct hv_device {int channel; } ;


 struct hv_uio_private_data* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int hv_uio_cleanup (struct hv_device*,struct hv_uio_private_data*) ;
 int kfree (struct hv_uio_private_data*) ;
 int uio_unregister_device (int *) ;
 int vmbus_free_ring (int ) ;

__attribute__((used)) static int
hv_uio_remove(struct hv_device *dev)
{
 struct hv_uio_private_data *pdata = hv_get_drvdata(dev);

 if (!pdata)
  return 0;

 uio_unregister_device(&pdata->info);
 hv_uio_cleanup(dev, pdata);
 hv_set_drvdata(dev, ((void*)0));

 vmbus_free_ring(dev->channel);
 kfree(pdata);
 return 0;
}
