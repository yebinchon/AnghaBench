
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_tpg_attrib {int login_keys_workaround; int tpg_enabled_sendtargets; int fabric_prot_type; int t10_pi; int default_erl; int demo_mode_discovery; int prod_mode_write_protect; int demo_mode_write_protect; int cache_dynamic_acls; int generate_node_acls; int default_cmdsn_depth; int netif_timeout; int login_timeout; int authentication; } ;
struct iscsi_portal_group {struct iscsi_tpg_attrib tpg_attrib; } ;


 int TA_AUTHENTICATION ;
 int TA_CACHE_DYNAMIC_ACLS ;
 int TA_DEFAULT_CMDSN_DEPTH ;
 int TA_DEFAULT_ERL ;
 int TA_DEFAULT_FABRIC_PROT_TYPE ;
 int TA_DEFAULT_LOGIN_KEYS_WORKAROUND ;
 int TA_DEFAULT_T10_PI ;
 int TA_DEFAULT_TPG_ENABLED_SENDTARGETS ;
 int TA_DEMO_MODE_DISCOVERY ;
 int TA_DEMO_MODE_WRITE_PROTECT ;
 int TA_GENERATE_NODE_ACLS ;
 int TA_LOGIN_TIMEOUT ;
 int TA_NETIF_TIMEOUT ;
 int TA_PROD_MODE_WRITE_PROTECT ;

__attribute__((used)) static void iscsit_set_default_tpg_attribs(struct iscsi_portal_group *tpg)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 a->authentication = TA_AUTHENTICATION;
 a->login_timeout = TA_LOGIN_TIMEOUT;
 a->netif_timeout = TA_NETIF_TIMEOUT;
 a->default_cmdsn_depth = TA_DEFAULT_CMDSN_DEPTH;
 a->generate_node_acls = TA_GENERATE_NODE_ACLS;
 a->cache_dynamic_acls = TA_CACHE_DYNAMIC_ACLS;
 a->demo_mode_write_protect = TA_DEMO_MODE_WRITE_PROTECT;
 a->prod_mode_write_protect = TA_PROD_MODE_WRITE_PROTECT;
 a->demo_mode_discovery = TA_DEMO_MODE_DISCOVERY;
 a->default_erl = TA_DEFAULT_ERL;
 a->t10_pi = TA_DEFAULT_T10_PI;
 a->fabric_prot_type = TA_DEFAULT_FABRIC_PROT_TYPE;
 a->tpg_enabled_sendtargets = TA_DEFAULT_TPG_ENABLED_SENDTARGETS;
 a->login_keys_workaround = TA_DEFAULT_LOGIN_KEYS_WORKAROUND;
}
