
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int qlini_mode; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ PAGE_SIZE ;




 char* QLA2XXX_INI_MODE_STR_DISABLED ;
 char* QLA2XXX_INI_MODE_STR_DUAL ;
 char* QLA2XXX_INI_MODE_STR_ENABLED ;
 char* QLA2XXX_INI_MODE_STR_EXCLUSIVE ;
 int class_to_shost (struct device*) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qlini_mode_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 int len = 0;

 len += scnprintf(buf + len, PAGE_SIZE-len,
     "Supported options: enabled | disabled | dual | exclusive\n");


 len += scnprintf(buf + len, PAGE_SIZE-len, "Current selection: ");

 switch (vha->qlini_mode) {
 case 128:
  len += scnprintf(buf + len, PAGE_SIZE-len,
      QLA2XXX_INI_MODE_STR_EXCLUSIVE);
  break;
 case 131:
  len += scnprintf(buf + len, PAGE_SIZE-len,
      QLA2XXX_INI_MODE_STR_DISABLED);
  break;
 case 129:
  len += scnprintf(buf + len, PAGE_SIZE-len,
      QLA2XXX_INI_MODE_STR_ENABLED);
  break;
 case 130:
  len += scnprintf(buf + len, PAGE_SIZE-len,
      QLA2XXX_INI_MODE_STR_DUAL);
  break;
 }
 len += scnprintf(buf + len, PAGE_SIZE-len, "\n");

 return len;
}
