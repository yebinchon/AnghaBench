
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int phys_port; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;

ssize_t
beiscsi_phys_port_disp(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);

 return snprintf(buf, PAGE_SIZE, "Port Identifier : %u\n",
   phba->fw_config.phys_port);
}
