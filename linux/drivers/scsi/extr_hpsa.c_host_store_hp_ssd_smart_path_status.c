
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmpbuf ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int acciopath_status; TYPE_1__* pdev; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int dev_warn (int *,char*,char*) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int sscanf (char*,char*,int*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static ssize_t host_store_hp_ssd_smart_path_status(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int status, len;
 struct ctlr_info *h;
 struct Scsi_Host *shost = class_to_shost(dev);
 char tmpbuf[10];

 if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_RAWIO))
  return -EACCES;
 len = count > sizeof(tmpbuf) - 1 ? sizeof(tmpbuf) - 1 : count;
 strncpy(tmpbuf, buf, len);
 tmpbuf[len] = '\0';
 if (sscanf(tmpbuf, "%d", &status) != 1)
  return -EINVAL;
 h = shost_to_hba(shost);
 h->acciopath_status = !!status;
 dev_warn(&h->pdev->dev,
  "hpsa: HP SSD Smart Path %s via sysfs update.\n",
  h->acciopath_status ? "enabled" : "disabled");
 return count;
}
