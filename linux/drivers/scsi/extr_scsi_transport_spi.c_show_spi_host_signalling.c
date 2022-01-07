
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_signalling ) (struct Scsi_Host*) ;} ;


 char* spi_signal_to_string (int ) ;
 int spi_signalling (struct Scsi_Host*) ;
 int sprintf (char*,char*,char*) ;
 int stub1 (struct Scsi_Host*) ;
 struct spi_internal* to_spi_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t show_spi_host_signalling(struct device *cdev,
     struct device_attribute *attr,
     char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(cdev);
 struct spi_internal *i = to_spi_internal(shost->transportt);

 if (i->f->get_signalling)
  i->f->get_signalling(shost);

 return sprintf(buf, "%s\n", spi_signal_to_string(spi_signalling(shost)));
}
