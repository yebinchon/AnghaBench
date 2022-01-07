
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int dummy; } ;


 struct ffs_dev* _ffs_do_find_dev (char const*) ;
 struct ffs_dev* _ffs_get_single_dev () ;

__attribute__((used)) static struct ffs_dev *_ffs_find_dev(const char *name)
{
 struct ffs_dev *dev;

 dev = _ffs_get_single_dev();
 if (dev)
  return dev;

 return _ffs_do_find_dev(name);
}
