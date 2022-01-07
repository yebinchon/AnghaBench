
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {int dummy; } ;
struct TYPE_4__ {TYPE_1__* lport_wwn; } ;
struct TYPE_3__ {char* name; } ;


 TYPE_2__* ft_tpg (struct se_portal_group*) ;

__attribute__((used)) static char *ft_get_fabric_wwn(struct se_portal_group *se_tpg)
{
 return ft_tpg(se_tpg)->lport_wwn->name;
}
