
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {int ntb; struct switchtec_dev* stdev; } ;
struct switchtec_dev {int link_notifier; struct switchtec_ntb* sndev; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct class_interface {int dummy; } ;
struct TYPE_2__ {int class; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LINK_MESSAGE ;
 int MSG_LINK_FORCE_DOWN ;
 int PCI_CLASS_BRIDGE_OTHER ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int dev_to_node (struct device*) ;
 int kfree (struct switchtec_ntb*) ;
 struct switchtec_ntb* kzalloc_node (int,int ,int ) ;
 int ntb_register_device (int *) ;
 int switchtec_ntb_deinit_crosslink (struct switchtec_ntb*) ;
 int switchtec_ntb_deinit_db_msg_irq (struct switchtec_ntb*) ;
 int switchtec_ntb_deinit_shared_mw (struct switchtec_ntb*) ;
 int switchtec_ntb_init_crosslink (struct switchtec_ntb*) ;
 int switchtec_ntb_init_db (struct switchtec_ntb*) ;
 int switchtec_ntb_init_db_msg_irq (struct switchtec_ntb*) ;
 int switchtec_ntb_init_msgs (struct switchtec_ntb*) ;
 int switchtec_ntb_init_mw (struct switchtec_ntb*) ;
 int switchtec_ntb_init_req_id_table (struct switchtec_ntb*) ;
 int switchtec_ntb_init_shared_mw (struct switchtec_ntb*) ;
 int switchtec_ntb_init_sndev (struct switchtec_ntb*) ;
 int switchtec_ntb_link_notification ;
 int switchtec_ntb_send_msg (struct switchtec_ntb*,int ,int ) ;
 struct switchtec_dev* to_stdev (struct device*) ;

__attribute__((used)) static int switchtec_ntb_add(struct device *dev,
        struct class_interface *class_intf)
{
 struct switchtec_dev *stdev = to_stdev(dev);
 struct switchtec_ntb *sndev;
 int rc;

 stdev->sndev = ((void*)0);

 if (stdev->pdev->class != (PCI_CLASS_BRIDGE_OTHER << 8))
  return -ENODEV;

 sndev = kzalloc_node(sizeof(*sndev), GFP_KERNEL, dev_to_node(dev));
 if (!sndev)
  return -ENOMEM;

 sndev->stdev = stdev;
 rc = switchtec_ntb_init_sndev(sndev);
 if (rc)
  goto free_and_exit;

 switchtec_ntb_init_mw(sndev);

 rc = switchtec_ntb_init_req_id_table(sndev);
 if (rc)
  goto free_and_exit;

 rc = switchtec_ntb_init_crosslink(sndev);
 if (rc)
  goto free_and_exit;

 switchtec_ntb_init_db(sndev);
 switchtec_ntb_init_msgs(sndev);

 rc = switchtec_ntb_init_shared_mw(sndev);
 if (rc)
  goto deinit_crosslink;

 rc = switchtec_ntb_init_db_msg_irq(sndev);
 if (rc)
  goto deinit_shared_and_exit;






 switchtec_ntb_send_msg(sndev, LINK_MESSAGE, MSG_LINK_FORCE_DOWN);

 rc = ntb_register_device(&sndev->ntb);
 if (rc)
  goto deinit_and_exit;

 stdev->sndev = sndev;
 stdev->link_notifier = switchtec_ntb_link_notification;
 dev_info(dev, "NTB device registered\n");

 return 0;

deinit_and_exit:
 switchtec_ntb_deinit_db_msg_irq(sndev);
deinit_shared_and_exit:
 switchtec_ntb_deinit_shared_mw(sndev);
deinit_crosslink:
 switchtec_ntb_deinit_crosslink(sndev);
free_and_exit:
 kfree(sndev);
 dev_err(dev, "failed to register ntb device: %d\n", rc);
 return rc;
}
