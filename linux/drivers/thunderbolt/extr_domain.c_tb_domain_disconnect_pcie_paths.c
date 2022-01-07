
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* disconnect_pcie_paths ) (struct tb*) ;} ;


 int EPERM ;
 int stub1 (struct tb*) ;

int tb_domain_disconnect_pcie_paths(struct tb *tb)
{
 if (!tb->cm_ops->disconnect_pcie_paths)
  return -EPERM;

 return tb->cm_ops->disconnect_pcie_paths(tb);
}
