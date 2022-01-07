
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int name; } ;


 int ARRAY_SIZE (int ) ;
 int EBUSY ;
 struct ffs_dev* _ffs_do_find_dev (char const*) ;
 int ffs_dev_lock () ;
 int ffs_dev_unlock () ;
 int strlcpy (int ,char const*,int ) ;

int ffs_name_dev(struct ffs_dev *dev, const char *name)
{
 struct ffs_dev *existing;
 int ret = 0;

 ffs_dev_lock();

 existing = _ffs_do_find_dev(name);
 if (!existing)
  strlcpy(dev->name, name, ARRAY_SIZE(dev->name));
 else if (existing != dev)
  ret = -EBUSY;

 ffs_dev_unlock();

 return ret;
}
