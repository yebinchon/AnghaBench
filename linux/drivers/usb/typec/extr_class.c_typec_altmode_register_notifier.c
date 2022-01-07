
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct typec_device_id {int member_1; int member_0; } ;
struct typec_altmode {int dummy; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;
struct altmode {struct typec_altmode adev; int nh; } ;


 int ENODEV ;
 struct typec_altmode* ERR_CAST (struct device*) ;
 struct typec_altmode* ERR_PTR (int) ;
 scalar_t__ IS_ERR_OR_NULL (struct device*) ;
 int altmode_match ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 struct device* device_connection_find_match (struct device*,int *,int *,int ) ;
 struct device* device_find_child (struct device*,struct typec_device_id*,int ) ;
 int put_device (struct device*) ;
 struct altmode* to_altmode (int ) ;
 int to_typec_altmode (struct device*) ;
 int typec_port_match ;

struct typec_altmode *
typec_altmode_register_notifier(struct device *dev, u16 svid, u8 mode,
    struct notifier_block *nb)
{
 struct typec_device_id id = { svid, mode, };
 struct device *altmode_dev;
 struct device *port_dev;
 struct altmode *altmode;
 int ret;


 port_dev = device_connection_find_match(dev, ((void*)0), ((void*)0),
      typec_port_match);
 if (IS_ERR_OR_NULL(port_dev))
  return port_dev ? ERR_CAST(port_dev) : ERR_PTR(-ENODEV);


 altmode_dev = device_find_child(port_dev, &id, altmode_match);

 put_device(port_dev);

 if (!altmode_dev)
  return ERR_PTR(-ENODEV);

 altmode = to_altmode(to_typec_altmode(altmode_dev));


 ret = blocking_notifier_chain_register(&altmode->nh, nb);
 if (ret) {
  put_device(altmode_dev);
  return ERR_PTR(ret);
 }

 return &altmode->adev;
}
