
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxlflash_cfg {int host; int num_fc_ports; struct afu* afu; } ;
struct afu {int internal_lun; } ;
struct Scsi_Host {int max_channel; } ;
typedef size_t ssize_t ;


 int PORTNUM2CHAN (int ) ;
 int afu_reset (struct cxlflash_cfg*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int kstrtouint (char const*,int,int*) ;
 int scsi_scan_host (int ) ;
 struct cxlflash_cfg* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t lun_mode_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct cxlflash_cfg *cfg = shost_priv(shost);
 struct afu *afu = cfg->afu;
 int rc;
 u32 lun_mode;

 rc = kstrtouint(buf, 10, &lun_mode);
 if (!rc && (lun_mode < 5) && (lun_mode != afu->internal_lun)) {
  afu->internal_lun = lun_mode;






  if (afu->internal_lun)
   shost->max_channel = 0;
  else
   shost->max_channel = PORTNUM2CHAN(cfg->num_fc_ports);

  afu_reset(cfg);
  scsi_scan_host(cfg->host);
 }

 return count;
}
