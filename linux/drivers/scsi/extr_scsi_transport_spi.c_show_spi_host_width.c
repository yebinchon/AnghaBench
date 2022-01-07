
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int max_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t show_spi_host_width(struct device *cdev,
          struct device_attribute *attr,
          char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(cdev);

 return sprintf(buf, "%s\n", shost->max_id == 16 ? "wide" : "narrow");
}
