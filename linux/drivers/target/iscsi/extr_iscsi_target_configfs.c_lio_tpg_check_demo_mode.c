
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {int dummy; } ;
struct TYPE_3__ {int generate_node_acls; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;


 TYPE_2__* iscsi_tpg (struct se_portal_group*) ;

__attribute__((used)) static int lio_tpg_check_demo_mode(struct se_portal_group *se_tpg)
{
 return iscsi_tpg(se_tpg)->tpg_attrib.generate_node_acls;
}
