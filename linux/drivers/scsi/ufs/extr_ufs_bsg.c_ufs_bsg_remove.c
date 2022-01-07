
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ufs_hba {int bsg_queue; struct device bsg_dev; } ;


 int bsg_remove_queue (int ) ;
 int device_del (struct device*) ;
 int put_device (struct device*) ;

void ufs_bsg_remove(struct ufs_hba *hba)
{
 struct device *bsg_dev = &hba->bsg_dev;

 if (!hba->bsg_queue)
  return;

 bsg_remove_queue(hba->bsg_queue);

 device_del(bsg_dev);
 put_device(bsg_dev);
}
