
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_xdomain {int dummy; } ;
struct tb {TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* approve_xdomain_paths ) (struct tb*,struct tb_xdomain*) ;} ;


 int ENOTSUPP ;
 int stub1 (struct tb*,struct tb_xdomain*) ;

int tb_domain_approve_xdomain_paths(struct tb *tb, struct tb_xdomain *xd)
{
 if (!tb->cm_ops->approve_xdomain_paths)
  return -ENOTSUPP;

 return tb->cm_ops->approve_xdomain_paths(tb, xd);
}
