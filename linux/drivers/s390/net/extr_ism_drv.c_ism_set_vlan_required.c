
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smcd_dev {int priv; } ;


 int ISM_SET_VLAN ;
 int ism_cmd_simple (int ,int ) ;

__attribute__((used)) static int ism_set_vlan_required(struct smcd_dev *smcd)
{
 return ism_cmd_simple(smcd->priv, ISM_SET_VLAN);
}
