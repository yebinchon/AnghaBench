
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct vscsifrnt_shadow {int rslt_reset; int wait_reset; int rqid; int wq_reset; int ref_rqid; struct scsi_cmnd* sc; int act; } ;
struct vscsifrnt_info {int wait_ring_available; int shadow_lock; int wq_sync; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int FAILED ;
 int GFP_NOIO ;
 int RSLT_RESET_ERR ;
 int RSLT_RESET_WAITING ;
 int init_waitqueue_head (int *) ;
 int kfree (struct vscsifrnt_shadow*) ;
 struct vscsifrnt_shadow* kzalloc (int,int ) ;
 struct vscsifrnt_shadow* scsi_cmd_priv (struct scsi_cmnd*) ;
 int scsifront_do_request (struct vscsifrnt_info*,struct vscsifrnt_shadow*) ;
 scalar_t__ scsifront_enter (struct vscsifrnt_info*) ;
 int scsifront_put_rqid (struct vscsifrnt_info*,int ) ;
 int scsifront_return (struct vscsifrnt_info*) ;
 struct vscsifrnt_info* shost_priv (struct Scsi_Host*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int ) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int scsifront_action_handler(struct scsi_cmnd *sc, uint8_t act)
{
 struct Scsi_Host *host = sc->device->host;
 struct vscsifrnt_info *info = shost_priv(host);
 struct vscsifrnt_shadow *shadow, *s = scsi_cmd_priv(sc);
 int err = 0;

 shadow = kzalloc(sizeof(*shadow), GFP_NOIO);
 if (!shadow)
  return FAILED;

 shadow->act = act;
 shadow->rslt_reset = RSLT_RESET_WAITING;
 shadow->sc = sc;
 shadow->ref_rqid = s->rqid;
 init_waitqueue_head(&shadow->wq_reset);

 spin_lock_irq(host->host_lock);

 for (;;) {
  if (scsifront_enter(info))
   goto fail;

  if (!scsifront_do_request(info, shadow))
   break;

  scsifront_return(info);
  if (err)
   goto fail;
  info->wait_ring_available = 1;
  spin_unlock_irq(host->host_lock);
  err = wait_event_interruptible(info->wq_sync,
            !info->wait_ring_available);
  spin_lock_irq(host->host_lock);
 }

 spin_unlock_irq(host->host_lock);
 err = wait_event_interruptible(shadow->wq_reset, shadow->wait_reset);
 spin_lock_irq(host->host_lock);

 if (!err) {
  err = shadow->rslt_reset;
  scsifront_put_rqid(info, shadow->rqid);
  kfree(shadow);
 } else {
  spin_lock(&info->shadow_lock);
  shadow->rslt_reset = RSLT_RESET_ERR;
  spin_unlock(&info->shadow_lock);
  err = FAILED;
 }

 scsifront_return(info);
 spin_unlock_irq(host->host_lock);
 return err;

fail:
 spin_unlock_irq(host->host_lock);
 kfree(shadow);
 return FAILED;
}
