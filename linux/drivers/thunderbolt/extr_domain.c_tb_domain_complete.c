
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* complete ) (struct tb*) ;} ;


 int stub1 (struct tb*) ;

void tb_domain_complete(struct tb *tb)
{
 if (tb->cm_ops->complete)
  tb->cm_ops->complete(tb);
}
