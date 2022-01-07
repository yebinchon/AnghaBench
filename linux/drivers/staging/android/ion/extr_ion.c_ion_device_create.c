
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int * parent; int * fops; int minor; } ;
struct ion_device {int heaps; int lock; int debug_root; TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MISC_DYNAMIC_MINOR ;
 int debugfs_create_dir (char*,int *) ;
 int init_rwsem (int *) ;
 struct ion_device* internal_dev ;
 int ion_fops ;
 int kfree (struct ion_device*) ;
 struct ion_device* kzalloc (int,int ) ;
 int misc_register (TYPE_1__*) ;
 int plist_head_init (int *) ;
 int pr_err (char*) ;

__attribute__((used)) static int ion_device_create(void)
{
 struct ion_device *idev;
 int ret;

 idev = kzalloc(sizeof(*idev), GFP_KERNEL);
 if (!idev)
  return -ENOMEM;

 idev->dev.minor = MISC_DYNAMIC_MINOR;
 idev->dev.name = "ion";
 idev->dev.fops = &ion_fops;
 idev->dev.parent = ((void*)0);
 ret = misc_register(&idev->dev);
 if (ret) {
  pr_err("ion: failed to register misc device.\n");
  kfree(idev);
  return ret;
 }

 idev->debug_root = debugfs_create_dir("ion", ((void*)0));
 init_rwsem(&idev->lock);
 plist_head_init(&idev->heaps);
 internal_dev = idev;
 return 0;
}
