
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ida {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct ida mode_ids; } ;
struct TYPE_5__ {struct ida mode_ids; } ;
struct TYPE_4__ {struct ida mode_ids; } ;


 int GFP_KERNEL ;
 int ida_simple_get (struct ida*,int ,int ,int ) ;
 scalar_t__ is_typec_partner (struct device*) ;
 scalar_t__ is_typec_plug (struct device*) ;
 TYPE_3__* to_typec_partner (struct device*) ;
 TYPE_2__* to_typec_plug (struct device*) ;
 TYPE_1__* to_typec_port (struct device*) ;

__attribute__((used)) static int altmode_id_get(struct device *dev)
{
 struct ida *ids;

 if (is_typec_partner(dev))
  ids = &to_typec_partner(dev)->mode_ids;
 else if (is_typec_plug(dev))
  ids = &to_typec_plug(dev)->mode_ids;
 else
  ids = &to_typec_port(dev)->mode_ids;

 return ida_simple_get(ids, 0, 0, GFP_KERNEL);
}
