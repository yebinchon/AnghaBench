
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct zfcp_qdio {int req_q_full; int stat_lock; scalar_t__ req_q_util; } ;
struct zfcp_adapter {struct zfcp_qdio* qdio; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef int ssize_t ;


 int atomic_read (int *) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,int,unsigned long long) ;

__attribute__((used)) static ssize_t zfcp_sysfs_adapter_q_full_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct Scsi_Host *scsi_host = class_to_shost(dev);
 struct zfcp_qdio *qdio =
  ((struct zfcp_adapter *) scsi_host->hostdata[0])->qdio;
 u64 util;

 spin_lock_bh(&qdio->stat_lock);
 util = qdio->req_q_util;
 spin_unlock_bh(&qdio->stat_lock);

 return sprintf(buf, "%d %llu\n", atomic_read(&qdio->req_q_full),
         (unsigned long long)util);
}
