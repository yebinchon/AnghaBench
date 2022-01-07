
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int cmd; } ;
struct TYPE_4__ {int vlan_id; TYPE_1__ hdr; } ;
union ism_set_vlan_id {TYPE_2__ request; } ;
typedef int u64 ;
struct smcd_dev {struct ism_dev* priv; } ;
struct ism_dev {int dummy; } ;
typedef int cmd ;


 int ISM_ADD_VLAN_ID ;
 int ism_cmd (struct ism_dev*,union ism_set_vlan_id*) ;
 int memset (union ism_set_vlan_id*,int ,int) ;

__attribute__((used)) static int ism_add_vlan_id(struct smcd_dev *smcd, u64 vlan_id)
{
 struct ism_dev *ism = smcd->priv;
 union ism_set_vlan_id cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.request.hdr.cmd = ISM_ADD_VLAN_ID;
 cmd.request.hdr.len = sizeof(cmd.request);

 cmd.request.vlan_id = vlan_id;

 return ism_cmd(ism, &cmd);
}
