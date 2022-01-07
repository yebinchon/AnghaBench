
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int min_supported_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_QLA27XX (struct qla_hw_data*) ;
 int IS_QLA28XX (struct qla_hw_data*) ;
 int PAGE_SIZE ;
 int class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,...) ;
 TYPE_1__* shost_priv (int ) ;

__attribute__((used)) static ssize_t
qla2x00_min_supported_speed_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  return scnprintf(buf, PAGE_SIZE, "\n");

 return scnprintf(buf, PAGE_SIZE, "%s\n",
     ha->min_supported_speed == 6 ? "64Gps" :
     ha->min_supported_speed == 5 ? "32Gps" :
     ha->min_supported_speed == 4 ? "16Gps" :
     ha->min_supported_speed == 3 ? "8Gps" :
     ha->min_supported_speed == 2 ? "4Gps" :
     ha->min_supported_speed != 0 ? "unknown" : "");
}
