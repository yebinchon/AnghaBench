
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {int ntb; } ;
struct switchtec_dev {struct switchtec_ntb* sndev; int * link_notifier; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;


 int dev_info (struct device*,char*) ;
 int kfree (struct switchtec_ntb*) ;
 int ntb_unregister_device (int *) ;
 int switchtec_ntb_deinit_crosslink (struct switchtec_ntb*) ;
 int switchtec_ntb_deinit_db_msg_irq (struct switchtec_ntb*) ;
 int switchtec_ntb_deinit_shared_mw (struct switchtec_ntb*) ;
 struct switchtec_dev* to_stdev (struct device*) ;

__attribute__((used)) static void switchtec_ntb_remove(struct device *dev,
     struct class_interface *class_intf)
{
 struct switchtec_dev *stdev = to_stdev(dev);
 struct switchtec_ntb *sndev = stdev->sndev;

 if (!sndev)
  return;

 stdev->link_notifier = ((void*)0);
 stdev->sndev = ((void*)0);
 ntb_unregister_device(&sndev->ntb);
 switchtec_ntb_deinit_db_msg_irq(sndev);
 switchtec_ntb_deinit_shared_mw(sndev);
 switchtec_ntb_deinit_crosslink(sndev);
 kfree(sndev);
 dev_info(dev, "ntb device unregistered\n");
}
