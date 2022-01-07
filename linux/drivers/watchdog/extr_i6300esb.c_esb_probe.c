
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct TYPE_6__ {int timeout; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct esb_dev {struct pci_dev* pdev; int base; TYPE_1__ wdd; } ;


 int ENODEV ;
 int ENOMEM ;
 int ESB_HEARTBEAT_DEFAULT ;
 int ESB_HEARTBEAT_MAX ;
 int ESB_HEARTBEAT_MIN ;
 int GFP_KERNEL ;
 int dev_info (int *,char*,int ,int ) ;
 struct esb_dev* devm_kzalloc (int *,int,int ) ;
 int esb_getdevice (struct esb_dev*) ;
 int esb_info ;
 int esb_initdevice (struct esb_dev*) ;
 int esb_ops ;
 int heartbeat ;
 int iounmap (int ) ;
 int nowayout ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;
 int watchdog_stop_on_unregister (TYPE_1__*) ;

__attribute__((used)) static int esb_probe(struct pci_dev *pdev,
  const struct pci_device_id *ent)
{
 struct esb_dev *edev;
 int ret;

 edev = devm_kzalloc(&pdev->dev, sizeof(*edev), GFP_KERNEL);
 if (!edev)
  return -ENOMEM;


 edev->pdev = pdev;
 if (!esb_getdevice(edev))
  return -ENODEV;


 edev->wdd.info = &esb_info;
 edev->wdd.ops = &esb_ops;
 edev->wdd.min_timeout = ESB_HEARTBEAT_MIN;
 edev->wdd.max_timeout = ESB_HEARTBEAT_MAX;
 edev->wdd.timeout = ESB_HEARTBEAT_DEFAULT;
 watchdog_init_timeout(&edev->wdd, heartbeat, ((void*)0));
 watchdog_set_nowayout(&edev->wdd, nowayout);
 watchdog_stop_on_reboot(&edev->wdd);
 watchdog_stop_on_unregister(&edev->wdd);
 esb_initdevice(edev);


 ret = watchdog_register_device(&edev->wdd);
 if (ret != 0)
  goto err_unmap;
 dev_info(&pdev->dev,
  "initialized. heartbeat=%d sec (nowayout=%d)\n",
  edev->wdd.timeout, nowayout);
 return 0;

err_unmap:
 iounmap(edev->base);
 pci_release_region(edev->pdev, 0);
 pci_disable_device(edev->pdev);
 return ret;
}
