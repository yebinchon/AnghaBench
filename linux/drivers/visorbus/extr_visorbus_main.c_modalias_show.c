
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int guid_t ;


 int sprintf (char*,char*,int const*) ;
 struct visor_device* to_visor_device (struct device*) ;
 int * visorchannel_get_guid (int ) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct visor_device *vdev;
 const guid_t *guid;

 vdev = to_visor_device(dev);
 guid = visorchannel_get_guid(vdev->visorchannel);
 return sprintf(buf, "visorbus:%pUl\n", guid);
}
