
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct tb_switch {int authorized; TYPE_2__ dev; } ;
struct tb {TYPE_1__* cm_ops; } ;
struct TYPE_3__ {int (* approve_switch ) (struct tb*,struct tb_switch*) ;int (* add_switch_key ) (struct tb*,struct tb_switch*) ;} ;


 int EINVAL ;
 int EPERM ;
 int stub1 (struct tb*,struct tb_switch*) ;
 int stub2 (struct tb*,struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;

int tb_domain_approve_switch_key(struct tb *tb, struct tb_switch *sw)
{
 struct tb_switch *parent_sw;
 int ret;

 if (!tb->cm_ops->approve_switch || !tb->cm_ops->add_switch_key)
  return -EPERM;


 parent_sw = tb_to_switch(sw->dev.parent);
 if (!parent_sw || !parent_sw->authorized)
  return -EINVAL;

 ret = tb->cm_ops->add_switch_key(tb, sw);
 if (ret)
  return ret;

 return tb->cm_ops->approve_switch(tb, sw);
}
