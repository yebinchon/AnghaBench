
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;
struct device {int dummy; } ;


 int kfree (struct visor_device*) ;
 struct visor_device* to_visor_device (struct device*) ;
 int visorchannel_destroy (int ) ;

__attribute__((used)) static void visorbus_release_device(struct device *xdev)
{
 struct visor_device *dev = to_visor_device(xdev);

 visorchannel_destroy(dev->visorchannel);
 kfree(dev);
}
