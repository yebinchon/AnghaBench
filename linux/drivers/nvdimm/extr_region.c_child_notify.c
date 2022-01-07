
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;


 int nd_device_notify (struct device*,int) ;

__attribute__((used)) static int child_notify(struct device *dev, void *data)
{
 nd_device_notify(dev, *(enum nvdimm_event *) data);
 return 0;
}
