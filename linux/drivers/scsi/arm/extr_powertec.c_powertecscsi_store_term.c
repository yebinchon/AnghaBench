
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 struct Scsi_Host* ecard_get_drvdata (struct expansion_card*) ;
 int powertecscsi_terminator_ctl (struct Scsi_Host*,int) ;

__attribute__((used)) static ssize_t
powertecscsi_store_term(struct device *dev, struct device_attribute *attr, const char *buf, size_t len)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 struct Scsi_Host *host = ecard_get_drvdata(ec);

 if (len > 1)
  powertecscsi_terminator_ctl(host, buf[0] != '0');

 return len;
}
