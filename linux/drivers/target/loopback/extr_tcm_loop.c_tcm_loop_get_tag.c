
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct se_portal_group {int dummy; } ;
struct TYPE_2__ {int tl_tpgt; } ;


 TYPE_1__* tl_tpg (struct se_portal_group*) ;

__attribute__((used)) static u16 tcm_loop_get_tag(struct se_portal_group *se_tpg)
{




 return tl_tpg(se_tpg)->tl_tpgt;
}
