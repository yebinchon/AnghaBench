
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct qedi_ctx {int mac; } ;
struct TYPE_17__ {char* byte; } ;
struct TYPE_14__ {char* byte; } ;
struct TYPE_12__ {char* byte; } ;
struct TYPE_18__ {TYPE_8__ gateway; TYPE_5__ subnet_mask; TYPE_3__ addr; } ;
struct TYPE_15__ {char* byte; } ;
struct TYPE_13__ {char* byte; } ;
struct TYPE_11__ {char* byte; } ;
struct TYPE_16__ {TYPE_6__ gateway; TYPE_4__ subnet_mask; TYPE_2__ addr; } ;
struct nvm_iscsi_initiator {int generic_cont0; TYPE_9__ ipv4; TYPE_7__ ipv6; } ;
struct TYPE_10__ {int ctrl_flags; } ;
struct nvm_iscsi_block {TYPE_1__ generic; struct nvm_iscsi_initiator initiator; } ;
typedef int ssize_t ;


 int ETH_ALEN ;
 int GET_FIELD2 (int ,int ) ;
 int IPV4_LEN ;
 int IPV6_LEN ;
 int NVM_ISCSI_CFG_GEN_DHCP_TCPIP_CONFIG_ENABLED ;
 int NVM_ISCSI_CFG_GEN_IPV6_ENABLED ;
 int NVM_ISCSI_CFG_INITIATOR_VLAN ;
 int SYSFS_FLAG_FW_SEL_BOOT ;
 struct nvm_iscsi_block* qedi_get_nvram_block (struct qedi_ctx*) ;
 int snprintf (char*,int,char*,...) ;
 int sysfs_format_mac (char*,int ,int ) ;

__attribute__((used)) static ssize_t qedi_show_boot_eth_info(void *data, int type, char *buf)
{
 struct qedi_ctx *qedi = data;
 struct nvm_iscsi_initiator *initiator;
 int rc = 1;
 u32 ipv6_en, dhcp_en, ip_len;
 struct nvm_iscsi_block *block;
 char *fmt, *ip, *sub, *gw;

 block = qedi_get_nvram_block(qedi);
 if (!block)
  return 0;

 initiator = &block->initiator;
 ipv6_en = block->generic.ctrl_flags &
    NVM_ISCSI_CFG_GEN_IPV6_ENABLED;
 dhcp_en = block->generic.ctrl_flags &
    NVM_ISCSI_CFG_GEN_DHCP_TCPIP_CONFIG_ENABLED;

 fmt = ipv6_en ? "%pI6\n" : "%pI4\n";
 ip = ipv6_en ? initiator->ipv6.addr.byte : initiator->ipv4.addr.byte;
 ip_len = ipv6_en ? IPV6_LEN : IPV4_LEN;
 sub = ipv6_en ? initiator->ipv6.subnet_mask.byte :
       initiator->ipv4.subnet_mask.byte;
 gw = ipv6_en ? initiator->ipv6.gateway.byte :
      initiator->ipv4.gateway.byte;

 fmt = dhcp_en ? "%s\n" : fmt;
 if (dhcp_en) {
  ip = ipv6_en ? "0::0" : "0.0.0.0";
  sub = ip;
  gw = ip;
  ip_len = ipv6_en ? 5 : 8;
 }

 switch (type) {
 case 132:
  rc = snprintf(buf, ip_len, fmt, ip);
  break;
 case 129:
  rc = snprintf(buf, ip_len, fmt, sub);
  break;
 case 134:
  rc = snprintf(buf, ip_len, fmt, gw);
  break;
 case 135:
  rc = snprintf(buf, 3, "%hhd\n",
         SYSFS_FLAG_FW_SEL_BOOT);
  break;
 case 133:
  rc = snprintf(buf, 3, "0\n");
  break;
 case 131:
  rc = sysfs_format_mac(buf, qedi->mac, ETH_ALEN);
  break;
 case 128:
  rc = snprintf(buf, 12, "%d\n",
         GET_FIELD2(initiator->generic_cont0,
      NVM_ISCSI_CFG_INITIATOR_VLAN));
  break;
 case 130:
  if (dhcp_en)
   rc = snprintf(buf, 3, "3\n");
  break;
 default:
  rc = 0;
  break;
 }

 return rc;
}
