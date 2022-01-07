
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iscsi_iface_param_info {int param; int * value; } ;
struct beiscsi_hba {int * ipv6_iface; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_IP_TYPE_V6 ;
 int EPERM ;
 int ISCSI_IFACE_ENABLE ;


 int beiscsi_if_en_static (struct beiscsi_hba*,int ,int *,int *) ;
 int beiscsi_iface_create_ipv6 (struct beiscsi_hba*) ;
 int iscsi_destroy_iface (int *) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
beiscsi_iface_config_ipv6(struct Scsi_Host *shost,
     struct iscsi_iface_param_info *iface_param,
     void *data, uint32_t dt_len)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 int ret = -EPERM;

 switch (iface_param->param) {
 case 129:
  if (iface_param->value[0] == ISCSI_IFACE_ENABLE)
   ret = beiscsi_iface_create_ipv6(phba);
  else {
   iscsi_destroy_iface(phba->ipv6_iface);
   phba->ipv6_iface = ((void*)0);
  }
  break;
 case 128:
  ret = beiscsi_if_en_static(phba, BEISCSI_IP_TYPE_V6,
        iface_param->value, ((void*)0));
  break;
 }

 return ret;
}
