
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iscsi_iface_param_info {int param; int * value; } ;
struct beiscsi_hba {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_VLAN_DISABLE ;
 int EPERM ;


 int ISCSI_VLAN_ENABLE ;
 int beiscsi_if_set_vlan (struct beiscsi_hba*,int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
beiscsi_iface_config_vlan(struct Scsi_Host *shost,
     struct iscsi_iface_param_info *iface_param)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int ret = -EPERM;

 switch (iface_param->param) {
 case 129:
  ret = 0;
  if (iface_param->value[0] != ISCSI_VLAN_ENABLE)
   ret = beiscsi_if_set_vlan(phba, BEISCSI_VLAN_DISABLE);
  break;
 case 128:
  ret = beiscsi_if_set_vlan(phba,
       *((uint16_t *)iface_param->value));
  break;
 }
 return ret;
}
