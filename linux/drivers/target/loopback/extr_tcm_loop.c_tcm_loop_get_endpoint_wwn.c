
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tl_hba; } ;
struct TYPE_3__ {char* tl_wwn_address; } ;


 TYPE_2__* tl_tpg (struct se_portal_group*) ;

__attribute__((used)) static char *tcm_loop_get_endpoint_wwn(struct se_portal_group *se_tpg)
{



 return &tl_tpg(se_tpg)->tl_hba->tl_wwn_address[0];
}
