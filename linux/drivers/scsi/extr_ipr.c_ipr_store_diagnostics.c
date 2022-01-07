
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioa_cfg {TYPE_1__* host; scalar_t__ errors_logged; scalar_t__ in_reset_reload; int reset_wait_q; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;
struct TYPE_2__ {int host_lock; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EIO ;
 int IPR_SHUTDOWN_NORMAL ;
 int capable (int ) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int ipr_initiate_ioa_reset (struct ipr_ioa_cfg*,int ) ;
 int msleep (int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;

__attribute__((used)) static ssize_t ipr_store_diagnostics(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ipr_ioa_cfg *ioa_cfg = (struct ipr_ioa_cfg *)shost->hostdata;
 unsigned long lock_flags = 0;
 int rc = count;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 while (ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);
  spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 }

 ioa_cfg->errors_logged = 0;
 ipr_initiate_ioa_reset(ioa_cfg, IPR_SHUTDOWN_NORMAL);

 if (ioa_cfg->in_reset_reload) {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  wait_event(ioa_cfg->reset_wait_q, !ioa_cfg->in_reset_reload);


  msleep(1000);
 } else {
  spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);
  return -EIO;
 }

 spin_lock_irqsave(ioa_cfg->host->host_lock, lock_flags);
 if (ioa_cfg->in_reset_reload || ioa_cfg->errors_logged)
  rc = -EIO;
 spin_unlock_irqrestore(ioa_cfg->host->host_lock, lock_flags);

 return rc;
}
