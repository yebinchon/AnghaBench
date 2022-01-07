
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
struct typec_mux {TYPE_3__ dev; } ;
struct typec_altmode_desc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int IS_ERR_OR_NULL (struct typec_mux*) ;
 int WARN_ON (int) ;
 struct typec_mux* device_connection_find_match (struct device*,char*,void*,int ) ;
 int try_module_get (int ) ;
 int typec_mux_match ;

struct typec_mux *typec_mux_get(struct device *dev,
    const struct typec_altmode_desc *desc)
{
 struct typec_mux *mux;

 mux = device_connection_find_match(dev, "mode-switch", (void *)desc,
        typec_mux_match);
 if (!IS_ERR_OR_NULL(mux))
  WARN_ON(!try_module_get(mux->dev.parent->driver->owner));

 return mux;
}
