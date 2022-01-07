
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_mport {int host_deviceid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int sprintf (char*,char*,int) ;
 struct rio_mport* to_rio_mport (struct device*) ;

__attribute__((used)) static ssize_t
port_destid_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct rio_mport *mport = to_rio_mport(dev);

 if (mport)
  return sprintf(buf, "0x%04x\n", mport->host_deviceid);
 else
  return -ENODEV;
}
