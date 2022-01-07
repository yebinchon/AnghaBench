
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_smd_edge {int dev; int mbox_chan; int state_work; int scan_work; int irq; } ;


 int cancel_work_sync (int *) ;
 int dev_warn (int *,char*,int) ;
 int device_for_each_child (int *,int *,int ) ;
 int device_unregister (int *) ;
 int disable_irq (int ) ;
 int mbox_free_channel (int ) ;
 int qcom_smd_remove_device ;

int qcom_smd_unregister_edge(struct qcom_smd_edge *edge)
{
 int ret;

 disable_irq(edge->irq);
 cancel_work_sync(&edge->scan_work);
 cancel_work_sync(&edge->state_work);

 ret = device_for_each_child(&edge->dev, ((void*)0), qcom_smd_remove_device);
 if (ret)
  dev_warn(&edge->dev, "can't remove smd device: %d\n", ret);

 mbox_free_channel(edge->mbox_chan);
 device_unregister(&edge->dev);

 return 0;
}
