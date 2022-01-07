
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int index; int kref; } ;
struct device {int dummy; } ;


 struct scsi_tape* dev_get_drvdata (struct device*) ;
 int idr_remove (int *,int) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_cdevs (struct scsi_tape*) ;
 int scsi_autopm_get_device (int ) ;
 int scsi_tape_release ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int st_index_idr ;
 int st_index_lock ;
 int st_ref_mutex ;
 int to_scsi_device (struct device*) ;

__attribute__((used)) static int st_remove(struct device *dev)
{
 struct scsi_tape *tpnt = dev_get_drvdata(dev);
 int index = tpnt->index;

 scsi_autopm_get_device(to_scsi_device(dev));
 remove_cdevs(tpnt);

 mutex_lock(&st_ref_mutex);
 kref_put(&tpnt->kref, scsi_tape_release);
 mutex_unlock(&st_ref_mutex);
 spin_lock(&st_index_lock);
 idr_remove(&st_index_idr, index);
 spin_unlock(&st_index_lock);
 return 0;
}
