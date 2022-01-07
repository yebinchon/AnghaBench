
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;
struct nlattr {int dummy; } ;
struct iscsi_iface_param_info {int param; int * value; } ;
struct beiscsi_hba {int * ipv4_iface; } ;
struct Scsi_Host {int dummy; } ;


 int BEISCSI_IP_TYPE_V4 ;
 int BEISCSI_LOG_CONFIG ;
 int EPERM ;
 int ISCSI_BOOTPROTO_DHCP ;
 int ISCSI_BOOTPROTO_STATIC ;
 int ISCSI_IFACE_ENABLE ;





 int KERN_ERR ;
 int beiscsi_if_en_dhcp (struct beiscsi_hba*,int ) ;
 int beiscsi_if_en_static (struct beiscsi_hba*,int ,int *,int *) ;
 int beiscsi_if_set_gw (struct beiscsi_hba*,int ,int *) ;
 int beiscsi_iface_create_ipv4 (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int ) ;
 int iscsi_destroy_iface (int *) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct iscsi_iface_param_info* nla_data (struct nlattr*) ;
 struct nlattr* nla_find (void*,int ,int const) ;

__attribute__((used)) static int
beiscsi_iface_config_ipv4(struct Scsi_Host *shost,
     struct iscsi_iface_param_info *info,
     void *data, uint32_t dt_len)
{
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 u8 *ip = ((void*)0), *subnet = ((void*)0), *gw;
 struct nlattr *nla;
 int ret = -EPERM;


 switch (info->param) {
 case 132:
  if (info->value[0] == ISCSI_IFACE_ENABLE)
   ret = beiscsi_iface_create_ipv4(phba);
  else {
   iscsi_destroy_iface(phba->ipv4_iface);
   phba->ipv4_iface = ((void*)0);
  }
  break;
 case 129:
  gw = info->value;
  ret = beiscsi_if_set_gw(phba, BEISCSI_IP_TYPE_V4, gw);
  break;
 case 130:
  if (info->value[0] == ISCSI_BOOTPROTO_DHCP)
   ret = beiscsi_if_en_dhcp(phba, BEISCSI_IP_TYPE_V4);
  else if (info->value[0] == ISCSI_BOOTPROTO_STATIC)

   ret = beiscsi_if_en_static(phba, BEISCSI_IP_TYPE_V4,
         ((void*)0), ((void*)0));
  else
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
        "BS_%d : Invalid BOOTPROTO: %d\n",
        info->value[0]);
  break;
 case 131:
  ip = info->value;
  nla = nla_find(data, dt_len, 128);
  if (nla) {
   info = nla_data(nla);
   subnet = info->value;
  }
  ret = beiscsi_if_en_static(phba, BEISCSI_IP_TYPE_V4,
        ip, subnet);
  break;
 case 128:




  subnet = info->value;
  nla = nla_find(data, dt_len, 131);
  if (nla) {
   info = nla_data(nla);
   ip = info->value;
  }
  ret = beiscsi_if_en_static(phba, BEISCSI_IP_TYPE_V4,
        ip, subnet);
  break;
 }

 return ret;
}
