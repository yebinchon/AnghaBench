
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_3__* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_5__ {int allow_cna_fw_dump; } ;


 int EINVAL ;
 int IS_P3P_TYPE (TYPE_3__*) ;
 int class_to_shost (struct device*) ;
 TYPE_1__* shost_priv (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
qla2x00_allow_cna_fw_dump_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 int val = 0;

 if (!IS_P3P_TYPE(vha->hw))
  return -EINVAL;

 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;

 vha->hw->allow_cna_fw_dump = val != 0;

 return strlen(buf);
}
