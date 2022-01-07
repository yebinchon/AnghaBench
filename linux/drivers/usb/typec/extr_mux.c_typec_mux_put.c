
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* parent; } ;
struct typec_mux {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int owner; } ;


 int IS_ERR_OR_NULL (struct typec_mux*) ;
 int module_put (int ) ;
 int put_device (TYPE_3__*) ;

void typec_mux_put(struct typec_mux *mux)
{
 if (!IS_ERR_OR_NULL(mux)) {
  module_put(mux->dev.parent->driver->owner);
  put_device(&mux->dev);
 }
}
