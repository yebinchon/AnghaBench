
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_internal_desc {int class; struct gasket_dev** devs; struct gasket_driver_desc* driver_desc; } ;
struct gasket_driver_desc {char* name; scalar_t__ minor; int major; int num_page_tables; } ;
struct gasket_cdev_info {struct gasket_dev* gasket_dev_ptr; int name; int devt; int device; } ;
struct gasket_dev {int dev_idx; struct gasket_cdev_info dev_info; int num_page_tables; int dev; int kobj_name; struct gasket_internal_desc* internal_desc; int mutex; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GASKET_NAME_MAX ;
 int GFP_KERNEL ;
 int MKDEV (int ,scalar_t__) ;
 char* dev_name (struct device*) ;
 int device_create (int ,struct device*,int ,struct gasket_dev*,int ) ;
 int gasket_find_dev_slot (struct gasket_internal_desc*,char const*) ;
 int get_device (struct device*) ;
 struct gasket_dev* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_debug (char*,char const*) ;
 int pr_err (char*,char const*) ;
 int snprintf (int ,int ,char*,char const*,...) ;

__attribute__((used)) static int gasket_alloc_dev(struct gasket_internal_desc *internal_desc,
       struct device *parent, struct gasket_dev **pdev)
{
 int dev_idx;
 const struct gasket_driver_desc *driver_desc =
  internal_desc->driver_desc;
 struct gasket_dev *gasket_dev;
 struct gasket_cdev_info *dev_info;
 const char *parent_name = dev_name(parent);

 pr_debug("Allocating a Gasket device, parent %s.\n", parent_name);

 *pdev = ((void*)0);

 dev_idx = gasket_find_dev_slot(internal_desc, parent_name);
 if (dev_idx < 0)
  return dev_idx;

 gasket_dev = *pdev = kzalloc(sizeof(*gasket_dev), GFP_KERNEL);
 if (!gasket_dev) {
  pr_err("no memory for device, parent %s\n", parent_name);
  return -ENOMEM;
 }
 internal_desc->devs[dev_idx] = gasket_dev;

 mutex_init(&gasket_dev->mutex);

 gasket_dev->internal_desc = internal_desc;
 gasket_dev->dev_idx = dev_idx;
 snprintf(gasket_dev->kobj_name, GASKET_NAME_MAX, "%s", parent_name);
 gasket_dev->dev = get_device(parent);

 gasket_dev->num_page_tables = driver_desc->num_page_tables;




 dev_info = &gasket_dev->dev_info;
 snprintf(dev_info->name, GASKET_NAME_MAX, "%s_%u", driver_desc->name,
   gasket_dev->dev_idx);
 dev_info->devt =
  MKDEV(driver_desc->major, driver_desc->minor +
        gasket_dev->dev_idx);
 dev_info->device =
  device_create(internal_desc->class, parent, dev_info->devt,
         gasket_dev, dev_info->name);


 dev_info->gasket_dev_ptr = gasket_dev;


 return 0;
}
