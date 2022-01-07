
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int entry; } ;


 int EBUSY ;
 int ENOMEM ;
 struct ffs_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ _ffs_get_single_dev () ;
 int ffs_devices ;
 int functionfs_init () ;
 int kfree (struct ffs_dev*) ;
 struct ffs_dev* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static struct ffs_dev *_ffs_alloc_dev(void)
{
 struct ffs_dev *dev;
 int ret;

 if (_ffs_get_single_dev())
   return ERR_PTR(-EBUSY);

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 if (list_empty(&ffs_devices)) {
  ret = functionfs_init();
  if (ret) {
   kfree(dev);
   return ERR_PTR(ret);
  }
 }

 list_add(&dev->entry, &ffs_devices);

 return dev;
}
