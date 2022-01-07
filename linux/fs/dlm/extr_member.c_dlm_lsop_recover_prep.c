
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_ls {int ls_ops_arg; TYPE_1__* ls_ops; } ;
struct TYPE_2__ {int (* recover_prep ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void dlm_lsop_recover_prep(struct dlm_ls *ls)
{
 if (!ls->ls_ops || !ls->ls_ops->recover_prep)
  return;
 ls->ls_ops->recover_prep(ls->ls_ops_arg);
}
