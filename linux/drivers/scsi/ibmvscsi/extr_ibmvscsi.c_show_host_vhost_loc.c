
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* loc; } ;
struct ibmvscsi_host_data {TYPE_1__ caps; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct ibmvscsi_host_data* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t show_host_vhost_loc(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ibmvscsi_host_data *hostdata = shost_priv(shost);
 int len;

 len = snprintf(buf, sizeof(hostdata->caps.loc), "%s\n",
         hostdata->caps.loc);
 return len;
}
