
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct visor_device {int visorchannel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;
 struct visor_device* to_visor_device (struct device*) ;
 int visorchannel_get_nbytes (int ) ;

__attribute__((used)) static ssize_t channel_bytes_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct visor_device *vdev = to_visor_device(dev);
 u64 nbytes = visorchannel_get_nbytes(vdev->visorchannel);

 return sprintf(buf, "0x%llx\n", nbytes);
}
