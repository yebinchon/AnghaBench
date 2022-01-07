
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int scsi_is_sdev_device (struct device*) ;
 int spi_dv_device (int ) ;
 int to_scsi_device (struct device*) ;

__attribute__((used)) static int child_iter(struct device *dev, void *data)
{
 if (!scsi_is_sdev_device(dev))
  return 0;

 spi_dv_device(to_scsi_device(dev));
 return 1;
}
