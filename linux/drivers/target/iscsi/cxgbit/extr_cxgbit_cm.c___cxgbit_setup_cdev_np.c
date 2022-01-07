
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ss_family; } ;
struct TYPE_6__ {TYPE_2__ local_addr; } ;
struct cxgbit_np {TYPE_3__ com; } ;
struct TYPE_4__ {int tids; } ;
struct cxgbit_device {TYPE_1__ lldi; int flags; } ;


 int AF_INET ;
 int CDEV_STATE_UP ;
 int EINVAL ;
 int ETIMEDOUT ;
 int cxgb4_alloc_stid (int ,int,struct cxgbit_np*) ;
 int cxgb4_free_stid (int ,int,int) ;
 int cxgbit_create_server4 (struct cxgbit_device*,int,struct cxgbit_np*) ;
 int cxgbit_create_server6 (struct cxgbit_device*,int,struct cxgbit_np*) ;
 int cxgbit_np_hash_add (struct cxgbit_device*,struct cxgbit_np*,int) ;
 int cxgbit_np_hash_del (struct cxgbit_device*,struct cxgbit_np*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
__cxgbit_setup_cdev_np(struct cxgbit_device *cdev, struct cxgbit_np *cnp)
{
 int stid, ret;
 int ss_family = cnp->com.local_addr.ss_family;

 if (!test_bit(CDEV_STATE_UP, &cdev->flags))
  return -EINVAL;

 stid = cxgb4_alloc_stid(cdev->lldi.tids, ss_family, cnp);
 if (stid < 0)
  return -EINVAL;

 if (!cxgbit_np_hash_add(cdev, cnp, stid)) {
  cxgb4_free_stid(cdev->lldi.tids, stid, ss_family);
  return -EINVAL;
 }

 if (ss_family == AF_INET)
  ret = cxgbit_create_server4(cdev, stid, cnp);
 else
  ret = cxgbit_create_server6(cdev, stid, cnp);

 if (ret) {
  if (ret != -ETIMEDOUT)
   cxgb4_free_stid(cdev->lldi.tids, stid,
     ss_family);
  cxgbit_np_hash_del(cdev, cnp);
  return ret;
 }
 return ret;
}
