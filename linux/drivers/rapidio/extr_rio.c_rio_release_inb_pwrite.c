
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int * pwcback; } ;


 int ENOMEM ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rio_release_inb_pwrite(struct rio_dev *rdev)
{
 int rc = -ENOMEM;

 spin_lock(&rio_global_list_lock);
 if (rdev->pwcback) {
  rdev->pwcback = ((void*)0);
  rc = 0;
 }

 spin_unlock(&rio_global_list_lock);
 return rc;
}
