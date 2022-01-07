
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct visor_device {int visorchannel; } ;
typedef int guid_t ;
typedef enum visorinput_dev_type { ____Placeholder_visorinput_dev_type } visorinput_dev_type ;


 int ENODEV ;
 int ENOMEM ;
 int devdata_create (struct visor_device*,int) ;
 scalar_t__ guid_equal (int const*,int *) ;
 int visor_keyboard_channel_guid ;
 int visor_mouse_channel_guid ;
 int visorbus_disable_channel_interrupts (struct visor_device*) ;
 int * visorchannel_get_guid (int ) ;
 int visorinput_keyboard ;
 int visorinput_mouse ;

__attribute__((used)) static int visorinput_probe(struct visor_device *dev)
{
 const guid_t *guid;
 enum visorinput_dev_type dtype;

 guid = visorchannel_get_guid(dev->visorchannel);
 if (guid_equal(guid, &visor_mouse_channel_guid))
  dtype = visorinput_mouse;
 else if (guid_equal(guid, &visor_keyboard_channel_guid))
  dtype = visorinput_keyboard;
 else
  return -ENODEV;
 visorbus_disable_channel_interrupts(dev);
 if (!devdata_create(dev, dtype))
  return -ENOMEM;
 return 0;
}
