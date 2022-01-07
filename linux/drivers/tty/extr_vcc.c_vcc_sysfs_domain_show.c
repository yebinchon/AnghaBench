
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int domain; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 struct vcc_port* dev_get_drvdata (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t vcc_sysfs_domain_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct vcc_port *port;
 int rv;

 port = dev_get_drvdata(dev);
 if (!port)
  return -ENODEV;

 rv = scnprintf(buf, PAGE_SIZE, "%s\n", port->domain);

 return rv;
}
