
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct qla_hw_data {scalar_t__ zio_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int EINVAL ;
 int ENOTSUPP ;
 int ISP_ABORT_NEEDED ;
 int IS_ZIO_SUPPORTED (struct qla_hw_data*) ;
 scalar_t__ QLA_ZIO_DISABLED ;
 scalar_t__ QLA_ZIO_MODE_6 ;
 int class_to_shost (struct device*) ;
 int set_bit (int ,int *) ;
 TYPE_1__* shost_priv (int ) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
qla2x00_zio_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 scsi_qla_host_t *vha = shost_priv(class_to_shost(dev));
 struct qla_hw_data *ha = vha->hw;
 int val = 0;
 uint16_t zio_mode;

 if (!IS_ZIO_SUPPORTED(ha))
  return -ENOTSUPP;

 if (sscanf(buf, "%d", &val) != 1)
  return -EINVAL;

 if (val)
  zio_mode = QLA_ZIO_MODE_6;
 else
  zio_mode = QLA_ZIO_DISABLED;


 if (zio_mode != QLA_ZIO_DISABLED || ha->zio_mode != QLA_ZIO_DISABLED) {
  ha->zio_mode = zio_mode;
  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
 }
 return strlen(buf);
}
