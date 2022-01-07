
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_modedef {struct device** devs; struct cdev** cdevs; } ;
struct scsi_tape {int index; struct st_modedef* modes; TYPE_2__* device; TYPE_1__* disk; } ;
struct device {int dummy; } ;
struct cdev {int * ops; int owner; } ;
typedef int dev_t ;
struct TYPE_4__ {int sdev_gendev; } ;
struct TYPE_3__ {char* disk_name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int SCSI_TAPE_MAJOR ;
 int ST_NBR_MODE_BITS ;
 int TAPE_MINOR (int,int,int) ;
 int THIS_MODULE ;
 int cdev_add (struct cdev*,int ,int) ;
 struct cdev* cdev_alloc () ;
 int cdev_del (struct cdev*) ;
 struct device* device_create (int *,int *,int ,struct st_modedef*,char*,char*) ;
 int pr_err (char*,int,...) ;
 int snprintf (char*,int,char*,char*,char*,int ) ;
 int st_fops ;
 int * st_formats ;
 int st_sysfs_class ;

__attribute__((used)) static int create_one_cdev(struct scsi_tape *tape, int mode, int rew)
{
 int i, error;
 dev_t cdev_devno;
 struct cdev *cdev;
 struct device *dev;
 struct st_modedef *STm = &(tape->modes[mode]);
 char name[10];
 int dev_num = tape->index;

 cdev_devno = MKDEV(SCSI_TAPE_MAJOR, TAPE_MINOR(dev_num, mode, rew));

 cdev = cdev_alloc();
 if (!cdev) {
  pr_err("st%d: out of memory. Device not attached.\n", dev_num);
  error = -ENOMEM;
  goto out;
 }
 cdev->owner = THIS_MODULE;
 cdev->ops = &st_fops;
 STm->cdevs[rew] = cdev;

 error = cdev_add(cdev, cdev_devno, 1);
 if (error) {
  pr_err("st%d: Can't add %s-rewind mode %d\n", dev_num,
         rew ? "non" : "auto", mode);
  pr_err("st%d: Device not attached.\n", dev_num);
  goto out_free;
 }

 i = mode << (4 - ST_NBR_MODE_BITS);
 snprintf(name, 10, "%s%s%s", rew ? "n" : "",
   tape->disk->disk_name, st_formats[i]);

 dev = device_create(&st_sysfs_class, &tape->device->sdev_gendev,
       cdev_devno, &tape->modes[mode], "%s", name);
 if (IS_ERR(dev)) {
  pr_err("st%d: device_create failed\n", dev_num);
  error = PTR_ERR(dev);
  goto out_free;
 }

 STm->devs[rew] = dev;

 return 0;
out_free:
 cdev_del(STm->cdevs[rew]);
out:
 STm->cdevs[rew] = ((void*)0);
 STm->devs[rew] = ((void*)0);
 return error;
}
