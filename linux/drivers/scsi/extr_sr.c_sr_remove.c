
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int kref; int disk; int device; } ;
struct device {int dummy; } ;


 int del_gendisk (int ) ;
 struct scsi_cd* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scsi_autopm_get_device (int ) ;
 int sr_kref_release ;
 int sr_ref_mutex ;

__attribute__((used)) static int sr_remove(struct device *dev)
{
 struct scsi_cd *cd = dev_get_drvdata(dev);

 scsi_autopm_get_device(cd->device);

 del_gendisk(cd->disk);
 dev_set_drvdata(dev, ((void*)0));

 mutex_lock(&sr_ref_mutex);
 kref_put(&cd->kref, sr_kref_release);
 mutex_unlock(&sr_ref_mutex);

 return 0;
}
