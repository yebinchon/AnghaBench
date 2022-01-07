
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_transport_attrs {int min_period; } ;
struct spi_internal {TYPE_1__* f; } ;
struct TYPE_4__ {int parent; } ;
struct scsi_target {int starget_data; TYPE_2__ dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* set_period ) (struct scsi_target*,int) ;} ;


 int EINVAL ;
 struct Scsi_Host* dev_to_shost (int ) ;
 int store_spi_transport_period_helper (struct device*,char const*,size_t,int*) ;
 int stub1 (struct scsi_target*,int) ;
 struct spi_internal* to_spi_internal (int ) ;
 struct scsi_target* transport_class_to_starget (struct device*) ;

__attribute__((used)) static ssize_t
store_spi_transport_period(struct device *cdev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_target *starget = transport_class_to_starget(cdev);
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct spi_internal *i = to_spi_internal(shost->transportt);
 struct spi_transport_attrs *tp =
  (struct spi_transport_attrs *)&starget->starget_data;
 int period, retval;

 if (!i->f->set_period)
  return -EINVAL;

 retval = store_spi_transport_period_helper(cdev, buf, count, &period);

 if (period < tp->min_period)
  period = tp->min_period;

 i->f->set_period(starget, period);

 return retval;
}
