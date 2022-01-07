
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int* diag_buffer_status; int * diag_buffer; } ;
typedef int ssize_t ;


 size_t MPI2_DIAG_BUF_TYPE_TRACE ;
 int MPT3_DIAG_BUFFER_IS_REGISTERED ;
 int MPT3_DIAG_BUFFER_IS_RELEASED ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
host_trace_buffer_enable_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 if ((!ioc->diag_buffer[MPI2_DIAG_BUF_TYPE_TRACE]) ||
    ((ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
     MPT3_DIAG_BUFFER_IS_REGISTERED) == 0))
  return snprintf(buf, PAGE_SIZE, "off\n");
 else if ((ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
     MPT3_DIAG_BUFFER_IS_RELEASED))
  return snprintf(buf, PAGE_SIZE, "release\n");
 else
  return snprintf(buf, PAGE_SIZE, "post\n");
}
