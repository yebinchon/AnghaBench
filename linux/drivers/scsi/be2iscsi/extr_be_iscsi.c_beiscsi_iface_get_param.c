
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_iface {int iface_type; } ;
struct beiscsi_hba {int ipv6_iface; int ipv4_iface; int state; } ;
struct TYPE_2__ {char addr; } ;
struct be_cmd_get_def_gateway_resp {TYPE_1__ ip_addr; } ;
struct Scsi_Host {int dummy; } ;
typedef int gateway ;
typedef enum iscsi_param_type { ____Placeholder_iscsi_param_type } iscsi_param_type ;


 int BEISCSI_IP_TYPE_V4 ;
 int BEISCSI_LOG_CONFIG ;
 int EBUSY ;
 int EPERM ;
 int ISCSI_IFACE_TYPE_IPV4 ;
 int ISCSI_IFACE_TYPE_IPV6 ;
 int ISCSI_NET_PARAM ;
 int KERN_INFO ;
 int __beiscsi_iface_get_param (struct beiscsi_hba*,struct iscsi_iface*,int,char*) ;
 int beiscsi_hba_is_online (struct beiscsi_hba*) ;
 int beiscsi_if_get_gw (struct beiscsi_hba*,int ,struct be_cmd_get_def_gateway_resp*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int ) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 struct Scsi_Host* iscsi_iface_to_shost (struct iscsi_iface*) ;
 int memset (struct be_cmd_get_def_gateway_resp*,int ,int) ;
 int sprintf (char*,char*,char*) ;

int beiscsi_iface_get_param(struct iscsi_iface *iface,
       enum iscsi_param_type param_type,
       int param, char *buf)
{
 struct Scsi_Host *shost = iscsi_iface_to_shost(iface);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct be_cmd_get_def_gateway_resp gateway;
 int len = -EPERM;

 if (param_type != ISCSI_NET_PARAM)
  return 0;
 if (!beiscsi_hba_is_online(phba)) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : HBA in error 0x%lx\n", phba->state);
  return -EBUSY;
 }

 switch (param) {
 case 135:
 case 132:
 case 134:
 case 131:
 case 130:
 case 129:
 case 128:
  len = __beiscsi_iface_get_param(phba, iface, param, buf);
  break;
 case 136:
  if (iface->iface_type == ISCSI_IFACE_TYPE_IPV4)
   len = sprintf(buf, "%s\n",
          phba->ipv4_iface ? "enable" : "disable");
  else if (iface->iface_type == ISCSI_IFACE_TYPE_IPV6)
   len = sprintf(buf, "%s\n",
          phba->ipv6_iface ? "enable" : "disable");
  break;
 case 133:
  memset(&gateway, 0, sizeof(gateway));
  len = beiscsi_if_get_gw(phba, BEISCSI_IP_TYPE_V4, &gateway);
  if (!len)
   len = sprintf(buf, "%pI4\n", &gateway.ip_addr.addr);
  break;
 }

 return len;
}
