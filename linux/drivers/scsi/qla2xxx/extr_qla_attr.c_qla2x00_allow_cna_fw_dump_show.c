
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
struct TYPE_5__ {scalar_t__ allow_cna_fw_dump; } ;


 int IS_P3P_TYPE (TYPE_3__*) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,...) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_allow_cna_fw_dump_show(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));

 if (!IS_P3P_TYPE(vha->hw))
  return scnprintf(buf, PAGE_SIZE, "\n");
 else
  return scnprintf(buf, PAGE_SIZE, "%s\n",
      vha->hw->allow_cna_fw_dump ? "true" : "false");
}
