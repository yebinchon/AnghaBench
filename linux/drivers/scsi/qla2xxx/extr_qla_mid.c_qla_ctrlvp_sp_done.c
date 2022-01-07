
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ comp; } ;
typedef TYPE_1__ srb_t ;


 int complete (scalar_t__) ;

__attribute__((used)) static void qla_ctrlvp_sp_done(srb_t *sp, int res)
{
 if (sp->comp)
  complete(sp->comp);

}
