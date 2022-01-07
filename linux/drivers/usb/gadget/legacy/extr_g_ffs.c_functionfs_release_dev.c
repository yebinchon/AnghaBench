
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffs_dev {int dummy; } ;


 int THIS_MODULE ;
 int module_put (int ) ;

__attribute__((used)) static void functionfs_release_dev(struct ffs_dev *dev)
{
 module_put(THIS_MODULE);
}
