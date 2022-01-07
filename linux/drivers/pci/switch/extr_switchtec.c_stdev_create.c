
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devt; int release; int groups; int * parent; int class; } ;
struct cdev {int owner; } ;
struct switchtec_dev {int alive; struct device dev; struct cdev cdev; int event_cnt; int event_wq; int link_event_work; int mrpc_timeout; int mrpc_work; scalar_t__ mrpc_busy; int mrpc_mutex; int mrpc_queue; struct pci_dev* pdev; } ;
struct pci_dev {int dev; } ;


 int ENOMEM ;
 struct switchtec_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 int cdev_init (struct cdev*,int *) ;
 int dev_set_name (struct device*,char*,int) ;
 int dev_to_node (int *) ;
 int device_initialize (struct device*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int init_waitqueue_head (int *) ;
 struct switchtec_dev* kzalloc_node (int,int ,int ) ;
 int link_event_work ;
 int mrpc_event_work ;
 int mrpc_timeout_work ;
 int mutex_init (int *) ;
 int put_device (struct device*) ;
 int stdev_release ;
 int switchtec_class ;
 int switchtec_device_groups ;
 int switchtec_devt ;
 int switchtec_fops ;
 int switchtec_minor_ida ;

__attribute__((used)) static struct switchtec_dev *stdev_create(struct pci_dev *pdev)
{
 struct switchtec_dev *stdev;
 int minor;
 struct device *dev;
 struct cdev *cdev;
 int rc;

 stdev = kzalloc_node(sizeof(*stdev), GFP_KERNEL,
        dev_to_node(&pdev->dev));
 if (!stdev)
  return ERR_PTR(-ENOMEM);

 stdev->alive = 1;
 stdev->pdev = pdev;
 INIT_LIST_HEAD(&stdev->mrpc_queue);
 mutex_init(&stdev->mrpc_mutex);
 stdev->mrpc_busy = 0;
 INIT_WORK(&stdev->mrpc_work, mrpc_event_work);
 INIT_DELAYED_WORK(&stdev->mrpc_timeout, mrpc_timeout_work);
 INIT_WORK(&stdev->link_event_work, link_event_work);
 init_waitqueue_head(&stdev->event_wq);
 atomic_set(&stdev->event_cnt, 0);

 dev = &stdev->dev;
 device_initialize(dev);
 dev->class = switchtec_class;
 dev->parent = &pdev->dev;
 dev->groups = switchtec_device_groups;
 dev->release = stdev_release;

 minor = ida_simple_get(&switchtec_minor_ida, 0, 0,
          GFP_KERNEL);
 if (minor < 0) {
  rc = minor;
  goto err_put;
 }

 dev->devt = MKDEV(MAJOR(switchtec_devt), minor);
 dev_set_name(dev, "switchtec%d", minor);

 cdev = &stdev->cdev;
 cdev_init(cdev, &switchtec_fops);
 cdev->owner = THIS_MODULE;

 return stdev;

err_put:
 put_device(&stdev->dev);
 return ERR_PTR(rc);
}
