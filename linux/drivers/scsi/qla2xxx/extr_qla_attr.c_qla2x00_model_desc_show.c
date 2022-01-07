
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int model_desc; } ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;
 TYPE_2__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_model_desc_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));

 return scnprintf(buf, PAGE_SIZE, "%s\n", vha->hw->model_desc);
}
