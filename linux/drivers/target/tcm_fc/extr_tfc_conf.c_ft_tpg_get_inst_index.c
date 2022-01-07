
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct se_portal_group {int dummy; } ;
struct TYPE_2__ {int index; } ;


 TYPE_1__* ft_tpg (struct se_portal_group*) ;

__attribute__((used)) static u32 ft_tpg_get_inst_index(struct se_portal_group *se_tpg)
{
 return ft_tpg(se_tpg)->index;
}
