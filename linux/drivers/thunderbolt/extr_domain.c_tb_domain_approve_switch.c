
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct tb_switch {int authorized; TYPE_1__ dev; } ;
struct tb {TYPE_2__* cm_ops; } ;
struct TYPE_4__ {int (* approve_switch ) (struct tb*,struct tb_switch*) ;} ;


 int EINVAL ;
 int EPERM ;
 int stub1 (struct tb*,struct tb_switch*) ;
 struct tb_switch* tb_to_switch (int ) ;

int tb_domain_approve_switch(struct tb *tb, struct tb_switch *sw)
{
 struct tb_switch *parent_sw;

 if (!tb->cm_ops->approve_switch)
  return -EPERM;


 parent_sw = tb_to_switch(sw->dev.parent);
 if (!parent_sw || !parent_sw->authorized)
  return -EINVAL;

 return tb->cm_ops->approve_switch(tb, sw);
}
