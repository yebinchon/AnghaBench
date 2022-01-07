
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {scalar_t__ zio_timer; } ;


 int EINVAL ;
 int ERANGE ;
 int class_to_shost (struct device*) ;
 TYPE_2__* shost_priv (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
qla2x00_zio_timer_store(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 int val = 0;
 uint16_t zio_timer;

 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;
 if (val > 25500 || val < 100)
  return -ERANGE;

 zio_timer = (uint16_t)(val / 100);
 vha->hw->zio_timer = zio_timer;

 return strlen(buf);
}
