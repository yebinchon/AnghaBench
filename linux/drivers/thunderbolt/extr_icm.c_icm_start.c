
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tb {TYPE_1__* root_switch; int dev; } ;
struct icm {int (* set_uuid ) (struct tb*) ;int rpm; int can_upgrade_nvm; scalar_t__ safe_mode; } ;
struct TYPE_7__ {int no_nvm_upgrade; int rpm; } ;


 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int stub1 (struct tb*) ;
 struct icm* tb_priv (struct tb*) ;
 int tb_switch_add (TYPE_1__*) ;
 TYPE_1__* tb_switch_alloc (struct tb*,int *,int ) ;
 TYPE_1__* tb_switch_alloc_safe_mode (struct tb*,int *,int ) ;
 int tb_switch_put (TYPE_1__*) ;

__attribute__((used)) static int icm_start(struct tb *tb)
{
 struct icm *icm = tb_priv(tb);
 int ret;

 if (icm->safe_mode)
  tb->root_switch = tb_switch_alloc_safe_mode(tb, &tb->dev, 0);
 else
  tb->root_switch = tb_switch_alloc(tb, &tb->dev, 0);
 if (IS_ERR(tb->root_switch))
  return PTR_ERR(tb->root_switch);

 tb->root_switch->no_nvm_upgrade = !icm->can_upgrade_nvm;
 tb->root_switch->rpm = icm->rpm;

 if (icm->set_uuid)
  icm->set_uuid(tb);

 ret = tb_switch_add(tb->root_switch);
 if (ret) {
  tb_switch_put(tb->root_switch);
  tb->root_switch = ((void*)0);
 }

 return ret;
}
