
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct typec_port {int dev; } ;
struct typec_mux {int dummy; } ;
struct typec_altmode_desc {int dummy; } ;
typedef struct typec_mux typec_altmode ;
struct TYPE_2__ {struct typec_mux* mux; } ;


 struct typec_mux* ERR_CAST (struct typec_mux*) ;
 scalar_t__ IS_ERR (struct typec_mux*) ;
 TYPE_1__* to_altmode (struct typec_mux*) ;
 struct typec_mux* typec_mux_get (int *,struct typec_altmode_desc const*) ;
 int typec_mux_put (struct typec_mux*) ;
 struct typec_mux* typec_register_altmode (int *,struct typec_altmode_desc const*) ;

struct typec_altmode *
typec_port_register_altmode(struct typec_port *port,
       const struct typec_altmode_desc *desc)
{
 struct typec_altmode *adev;
 struct typec_mux *mux;

 mux = typec_mux_get(&port->dev, desc);
 if (IS_ERR(mux))
  return ERR_CAST(mux);

 adev = typec_register_altmode(&port->dev, desc);
 if (IS_ERR(adev))
  typec_mux_put(mux);
 else
  to_altmode(adev)->mux = mux;

 return adev;
}
