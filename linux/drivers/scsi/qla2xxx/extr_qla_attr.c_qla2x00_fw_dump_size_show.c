
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct qla_hw_data {scalar_t__ fw_dump_len; scalar_t__ md_dump_size; scalar_t__ md_template_size; int fw_dumped; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_P3P_TYPE (struct qla_hw_data*) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,scalar_t__) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_fw_dump_size_show(struct device *dev, struct device_attribute *attr,
 char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 uint32_t size;

 if (!ha->fw_dumped)
  size = 0;
 else if (IS_P3P_TYPE(ha))
  size = ha->md_template_size + ha->md_dump_size;
 else
  size = ha->fw_dump_len;

 return scnprintf(buf, PAGE_SIZE, "%d\n", size);
}
