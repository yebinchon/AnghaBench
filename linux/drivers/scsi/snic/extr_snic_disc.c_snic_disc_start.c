
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_disc {scalar_t__ state; int mutex; int req_cnt; } ;
struct snic {int shost; int snic_lock; scalar_t__ in_remove; struct snic_disc disc; } ;


 scalar_t__ SNIC_DISC_PENDING ;
 int SNIC_ERR (char*) ;
 int SNIC_HOST_INFO (int ,char*,int) ;
 int SNIC_SCSI_DBG (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snic_queue_report_tgt_req (struct snic*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snic_disc_start(struct snic *snic)
{
 struct snic_disc *disc = &snic->disc;
 unsigned long flags;
 int ret = 0;

 SNIC_SCSI_DBG(snic->shost, "Discovery Start.\n");

 spin_lock_irqsave(&snic->snic_lock, flags);
 if (snic->in_remove) {
  spin_unlock_irqrestore(&snic->snic_lock, flags);
  SNIC_ERR("snic driver removal in progress ...\n");
  ret = 0;

  return ret;
 }
 spin_unlock_irqrestore(&snic->snic_lock, flags);

 mutex_lock(&disc->mutex);
 if (disc->state == SNIC_DISC_PENDING) {
  disc->req_cnt++;
  mutex_unlock(&disc->mutex);

  return ret;
 }
 disc->state = SNIC_DISC_PENDING;
 mutex_unlock(&disc->mutex);

 ret = snic_queue_report_tgt_req(snic);
 if (ret)
  SNIC_HOST_INFO(snic->shost, "Discovery Failed, err=%d.\n", ret);

 return ret;
}
