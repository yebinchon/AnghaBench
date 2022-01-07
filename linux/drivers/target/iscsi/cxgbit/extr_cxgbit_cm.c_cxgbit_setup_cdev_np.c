
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cxgbit_device* cdev; } ;
struct cxgbit_np {TYPE_1__ com; } ;
struct cxgbit_device {int dummy; } ;


 scalar_t__ __cxgbit_setup_cdev_np (struct cxgbit_device*,struct cxgbit_np*) ;
 int cdev_list_lock ;
 struct cxgbit_device* cxgbit_find_np_cdev (struct cxgbit_np*) ;
 scalar_t__ cxgbit_np_hash_find (struct cxgbit_device*,struct cxgbit_np*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cxgbit_setup_cdev_np(struct cxgbit_np *cnp)
{
 struct cxgbit_device *cdev;
 int ret = -1;

 mutex_lock(&cdev_list_lock);
 cdev = cxgbit_find_np_cdev(cnp);
 if (!cdev)
  goto out;

 if (cxgbit_np_hash_find(cdev, cnp) >= 0)
  goto out;

 if (__cxgbit_setup_cdev_np(cdev, cnp))
  goto out;

 cnp->com.cdev = cdev;
 ret = 0;
out:
 mutex_unlock(&cdev_list_lock);
 return ret;
}
