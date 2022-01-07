
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int kref; int device; } ;


 struct scsi_tape* idr_find (int *,int) ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scsi_device_get (int ) ;
 int scsi_tape_release ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int st_index_idr ;
 int st_index_lock ;
 int st_ref_mutex ;

__attribute__((used)) static struct scsi_tape *scsi_tape_get(int dev)
{
 struct scsi_tape *STp = ((void*)0);

 mutex_lock(&st_ref_mutex);
 spin_lock(&st_index_lock);

 STp = idr_find(&st_index_idr, dev);
 if (!STp) goto out;

 kref_get(&STp->kref);

 if (!STp->device)
  goto out_put;

 if (scsi_device_get(STp->device))
  goto out_put;

 goto out;

out_put:
 kref_put(&STp->kref, scsi_tape_release);
 STp = ((void*)0);
out:
 spin_unlock(&st_index_lock);
 mutex_unlock(&st_ref_mutex);
 return STp;
}
