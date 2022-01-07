
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_portal_group {int dummy; } ;
struct TYPE_3__ {int fabric_prot_type; int t10_pi; } ;
struct TYPE_4__ {TYPE_1__ tpg_attrib; } ;


 TYPE_2__* iscsi_tpg (struct se_portal_group*) ;

__attribute__((used)) static int lio_tpg_check_prot_fabric_only(
 struct se_portal_group *se_tpg)
{




 if (!iscsi_tpg(se_tpg)->tpg_attrib.t10_pi)
  return 0;
 return iscsi_tpg(se_tpg)->tpg_attrib.fabric_prot_type;
}
