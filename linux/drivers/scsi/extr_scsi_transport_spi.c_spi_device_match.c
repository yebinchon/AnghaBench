
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct spi_internal {TYPE_3__* f; } ;
struct scsi_device {int sdev_target; struct Scsi_Host* host; } ;
struct device {int dummy; } ;
struct attribute_container {int dummy; } ;
struct Scsi_Host {TYPE_4__* transportt; } ;
struct TYPE_10__ {int class; } ;
struct TYPE_6__ {int * class; } ;
struct TYPE_7__ {TYPE_1__ ac; } ;
struct TYPE_9__ {TYPE_2__ host_attrs; } ;
struct TYPE_8__ {scalar_t__ (* deny_binding ) (int ) ;} ;


 int scsi_is_sdev_device (struct device*) ;
 TYPE_5__ spi_host_class ;
 scalar_t__ stub1 (int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 struct spi_internal* to_spi_internal (TYPE_4__*) ;

__attribute__((used)) static int spi_device_match(struct attribute_container *cont,
       struct device *dev)
{
 struct scsi_device *sdev;
 struct Scsi_Host *shost;
 struct spi_internal *i;

 if (!scsi_is_sdev_device(dev))
  return 0;

 sdev = to_scsi_device(dev);
 shost = sdev->host;
 if (!shost->transportt || shost->transportt->host_attrs.ac.class
     != &spi_host_class.class)
  return 0;



 i = to_spi_internal(shost->transportt);
 if (i->f->deny_binding && i->f->deny_binding(sdev->sdev_target))
  return 0;
 return 1;
}
