
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fw_ver; int * wait; } ;
struct snic {int snic_lock; TYPE_1__ fwinfo; int shost; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int ETIMEDOUT ;
 int SNIC_HOST_ERR (int ,char*) ;
 int SNIC_HOST_INFO (int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int msleep (int) ;
 int snic_queue_exch_ver_req (struct snic*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait ;
 int wait_for_completion_timeout (int *,int ) ;

int
snic_get_conf(struct snic *snic)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 unsigned long flags;
 int ret;
 int nr_retries = 3;

 SNIC_HOST_INFO(snic->shost, "Retrieving snic params.\n");
 spin_lock_irqsave(&snic->snic_lock, flags);
 memset(&snic->fwinfo, 0, sizeof(snic->fwinfo));
 snic->fwinfo.wait = &wait;
 spin_unlock_irqrestore(&snic->snic_lock, flags);


 msleep(50);





 do {
  ret = snic_queue_exch_ver_req(snic);
  if (ret)
   return ret;

  wait_for_completion_timeout(&wait, msecs_to_jiffies(2000));
  spin_lock_irqsave(&snic->snic_lock, flags);
  ret = (snic->fwinfo.fw_ver != 0) ? 0 : -ETIMEDOUT;
  if (ret)
   SNIC_HOST_ERR(snic->shost,
          "Failed to retrieve snic params,\n");


  if (ret == 0 || nr_retries == 1)
   snic->fwinfo.wait = ((void*)0);

  spin_unlock_irqrestore(&snic->snic_lock, flags);
 } while (ret && --nr_retries);

 return ret;
}
