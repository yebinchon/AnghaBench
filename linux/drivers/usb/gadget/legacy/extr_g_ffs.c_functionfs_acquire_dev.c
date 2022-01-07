
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int dummy; } ;


 int ENOENT ;
 void* ERR_PTR (int ) ;
 int THIS_MODULE ;
 int try_module_get (int ) ;

__attribute__((used)) static void *functionfs_acquire_dev(struct ffs_dev *dev)
{
 if (!try_module_get(THIS_MODULE))
  return ERR_PTR(-ENOENT);

 return ((void*)0);
}
