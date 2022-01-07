
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int id; int cdev; int dev; int parent; int dc_wq; int fieldbus_id_get; int write_area; int read_area; } ;
typedef int dev_t ;


 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MAX_FIELDBUSES ;
 int MKDEV (int ,int) ;
 int PTR_ERR (int ) ;
 int cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 int device_create (int *,int ,int ,struct fieldbus_dev*,char*,int) ;
 int fieldbus_class ;
 int fieldbus_devt ;
 int fieldbus_fops ;
 int fieldbus_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 int pr_err (char*,int,int ,int) ;

__attribute__((used)) static int __fieldbus_dev_register(struct fieldbus_dev *fb)
{
 dev_t devno;
 int err;

 if (!fb)
  return -EINVAL;
 if (!fb->read_area || !fb->write_area || !fb->fieldbus_id_get)
  return -EINVAL;
 fb->id = ida_simple_get(&fieldbus_ida, 0, MAX_FIELDBUSES, GFP_KERNEL);
 if (fb->id < 0)
  return fb->id;
 devno = MKDEV(MAJOR(fieldbus_devt), fb->id);
 init_waitqueue_head(&fb->dc_wq);
 cdev_init(&fb->cdev, &fieldbus_fops);
 err = cdev_add(&fb->cdev, devno, 1);
 if (err) {
  pr_err("fieldbus_dev%d unable to add device %d:%d\n",
         fb->id, MAJOR(fieldbus_devt), fb->id);
  goto err_cdev;
 }
 fb->dev = device_create(&fieldbus_class, fb->parent, devno, fb,
    "fieldbus_dev%d", fb->id);
 if (IS_ERR(fb->dev)) {
  err = PTR_ERR(fb->dev);
  goto err_dev_create;
 }
 return 0;

err_dev_create:
 cdev_del(&fb->cdev);
err_cdev:
 ida_simple_remove(&fieldbus_ida, fb->id);
 return err;
}
