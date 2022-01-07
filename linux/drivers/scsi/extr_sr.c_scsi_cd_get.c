
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cd {int kref; int device; } ;
struct gendisk {int * private_data; } ;


 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct scsi_cd* scsi_cd (struct gendisk*) ;
 scalar_t__ scsi_device_get (int ) ;
 int sr_kref_release ;
 int sr_ref_mutex ;

__attribute__((used)) static inline struct scsi_cd *scsi_cd_get(struct gendisk *disk)
{
 struct scsi_cd *cd = ((void*)0);

 mutex_lock(&sr_ref_mutex);
 if (disk->private_data == ((void*)0))
  goto out;
 cd = scsi_cd(disk);
 kref_get(&cd->kref);
 if (scsi_device_get(cd->device)) {
  kref_put(&cd->kref, sr_kref_release);
  cd = ((void*)0);
 }
 out:
 mutex_unlock(&sr_ref_mutex);
 return cd;
}
