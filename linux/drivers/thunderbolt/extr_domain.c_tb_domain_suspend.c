
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* suspend ) (struct tb*) ;} ;


 int stub1 (struct tb*) ;

int tb_domain_suspend(struct tb *tb)
{
 return tb->cm_ops->suspend ? tb->cm_ops->suspend(tb) : 0;
}
