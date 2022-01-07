
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {int dev; } ;
struct sale {int dummy; } ;
struct chsc_scm_info {int mbc; int is; struct sale* scmal; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int device_register (int *) ;
 struct scm_device* kzalloc (int,int ) ;
 int put_device (int *) ;
 struct scm_device* scmdev_find (struct sale*) ;
 int scmdev_setup (struct scm_device*,struct sale*,int ,int ) ;
 int scmdev_update (struct scm_device*,struct sale*) ;

__attribute__((used)) static int scm_add(struct chsc_scm_info *scm_info, size_t num)
{
 struct sale *sale, *scmal = scm_info->scmal;
 struct scm_device *scmdev;
 int ret;

 for (sale = scmal; sale < scmal + num; sale++) {
  scmdev = scmdev_find(sale);
  if (scmdev) {
   scmdev_update(scmdev, sale);

   put_device(&scmdev->dev);
   continue;
  }
  scmdev = kzalloc(sizeof(*scmdev), GFP_KERNEL);
  if (!scmdev)
   return -ENODEV;
  scmdev_setup(scmdev, sale, scm_info->is, scm_info->mbc);
  ret = device_register(&scmdev->dev);
  if (ret) {

   put_device(&scmdev->dev);
   return ret;
  }
 }

 return 0;
}
