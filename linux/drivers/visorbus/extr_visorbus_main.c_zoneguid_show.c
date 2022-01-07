
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LINESIZE ;
 int sprintf (char*,char*,char*) ;
 struct visor_device* to_visor_device (struct device*) ;
 char* visorchannel_zoneid (int ,char*) ;

__attribute__((used)) static ssize_t zoneguid_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct visor_device *vdev = to_visor_device(dev);
 char zoneid[LINESIZE];

 return sprintf(buf, "%s\n",
         visorchannel_zoneid(vdev->visorchannel, zoneid));
}
