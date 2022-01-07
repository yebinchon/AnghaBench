
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int fdt_block_size; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_flash_block_size_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;

 return scnprintf(buf, PAGE_SIZE, "0x%x\n", ha->fdt_block_size);
}
