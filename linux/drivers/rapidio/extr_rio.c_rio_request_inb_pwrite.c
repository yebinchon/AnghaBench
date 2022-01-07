
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_dev {int (* pwcback ) (struct rio_dev*,union rio_pw_msg*,int) ;} ;


 int ENOMEM ;
 int rio_global_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int rio_request_inb_pwrite(struct rio_dev *rdev,
 int (*pwcback)(struct rio_dev *rdev, union rio_pw_msg *msg, int step))
{
 int rc = 0;

 spin_lock(&rio_global_list_lock);
 if (rdev->pwcback)
  rc = -ENOMEM;
 else
  rdev->pwcback = pwcback;

 spin_unlock(&rio_global_list_lock);
 return rc;
}
