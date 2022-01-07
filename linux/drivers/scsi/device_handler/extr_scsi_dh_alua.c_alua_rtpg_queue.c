
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_queue_data {int entry; } ;
struct alua_port_group {int flags; int kref; int rtpg_work; int lock; struct scsi_device* rtpg_sdev; scalar_t__ interval; int rtpg_list; } ;


 int ALUA_PG_RUNNING ;
 int ALUA_PG_RUN_RTPG ;
 int ALUA_PG_RUN_STPG ;
 int ALUA_RTPG_DELAY_MSECS ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int kaluad_wq ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int list_add_tail (int *,int *) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ queue_delayed_work (int ,int *,int ) ;
 int release_port_group ;
 scalar_t__ scsi_device_get (struct scsi_device*) ;
 int scsi_device_put (struct scsi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool alua_rtpg_queue(struct alua_port_group *pg,
       struct scsi_device *sdev,
       struct alua_queue_data *qdata, bool force)
{
 int start_queue = 0;
 unsigned long flags;
 if (WARN_ON_ONCE(!pg) || scsi_device_get(sdev))
  return 0;

 spin_lock_irqsave(&pg->lock, flags);
 if (qdata) {
  list_add_tail(&qdata->entry, &pg->rtpg_list);
  pg->flags |= ALUA_PG_RUN_STPG;
  force = 1;
 }
 if (pg->rtpg_sdev == ((void*)0)) {
  pg->interval = 0;
  pg->flags |= ALUA_PG_RUN_RTPG;
  kref_get(&pg->kref);
  pg->rtpg_sdev = sdev;
  start_queue = 1;
 } else if (!(pg->flags & ALUA_PG_RUN_RTPG) && force) {
  pg->flags |= ALUA_PG_RUN_RTPG;

  if (!(pg->flags & ALUA_PG_RUNNING)) {
   kref_get(&pg->kref);
   start_queue = 1;
  }
 }

 spin_unlock_irqrestore(&pg->lock, flags);

 if (start_queue) {
  if (queue_delayed_work(kaluad_wq, &pg->rtpg_work,
    msecs_to_jiffies(ALUA_RTPG_DELAY_MSECS)))
   sdev = ((void*)0);
  else
   kref_put(&pg->kref, release_port_group);
 }
 if (sdev)
  scsi_device_put(sdev);

 return 1;
}
