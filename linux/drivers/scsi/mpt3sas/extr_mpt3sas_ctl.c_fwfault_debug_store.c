
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int fwfault_debug; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int ioc_info (struct MPT3SAS_ADAPTER*,char*,int) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
fwfault_debug_store(struct device *cdev, struct device_attribute *attr,
 const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 int val = 0;

 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;

 ioc->fwfault_debug = val;
 ioc_info(ioc, "fwfault_debug=%d\n",
   ioc->fwfault_debug);
 return strlen(buf);
}
