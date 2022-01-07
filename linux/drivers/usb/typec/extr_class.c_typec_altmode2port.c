
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct typec_port {int dummy; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct TYPE_7__ {struct TYPE_7__* parent; } ;


 scalar_t__ is_typec_partner (TYPE_2__*) ;
 scalar_t__ is_typec_plug (TYPE_2__*) ;
 scalar_t__ is_typec_port (TYPE_2__*) ;
 struct typec_port* to_typec_port (TYPE_2__*) ;

struct typec_port *typec_altmode2port(struct typec_altmode *alt)
{
 if (is_typec_plug(alt->dev.parent))
  return to_typec_port(alt->dev.parent->parent->parent);
 if (is_typec_partner(alt->dev.parent))
  return to_typec_port(alt->dev.parent->parent);
 if (is_typec_port(alt->dev.parent))
  return to_typec_port(alt->dev.parent);

 return ((void*)0);
}
