
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmpbuf ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ctlr_info {int raid_offload_debug; TYPE_1__* pdev; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int dev; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_RAWIO ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int dev_warn (int *,char*,int) ;
 struct ctlr_info* shost_to_hba (struct Scsi_Host*) ;
 int sscanf (char*,char*,int*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static ssize_t host_store_raid_offload_debug(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int debug_level, len;
 struct ctlr_info *h;
 struct Scsi_Host *shost = class_to_shost(dev);
 char tmpbuf[10];

 if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_RAWIO))
  return -EACCES;
 len = count > sizeof(tmpbuf) - 1 ? sizeof(tmpbuf) - 1 : count;
 strncpy(tmpbuf, buf, len);
 tmpbuf[len] = '\0';
 if (sscanf(tmpbuf, "%d", &debug_level) != 1)
  return -EINVAL;
 if (debug_level < 0)
  debug_level = 0;
 h = shost_to_hba(shost);
 h->raid_offload_debug = debug_level;
 dev_warn(&h->pdev->dev, "hpsa: Set raid_offload_debug level = %d\n",
  h->raid_offload_debug);
 return count;
}
