
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int log_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_lock; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ibmvfc_host* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static ssize_t ibmvfc_show_log_level(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvfc_host *vhost = shost_priv(shost);
 unsigned long flags = 0;
 int len;

 spin_lock_irqsave(shost->host_lock, flags);
 len = snprintf(buf, PAGE_SIZE, "%d\n", vhost->log_level);
 spin_unlock_irqrestore(shost->host_lock, flags);
 return len;
}
