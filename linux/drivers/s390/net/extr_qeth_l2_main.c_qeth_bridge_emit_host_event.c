
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qeth_card {TYPE_2__* gdev; } ;
struct net_if_token {int cssid; int ssid; int devnum; int iid; int chpid; int chid; } ;
struct mac_addr_lnid {int lnid; int mac; } ;
typedef int str ;
typedef enum qeth_an_event_type { ____Placeholder_qeth_an_event_type } qeth_an_event_type ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int IPA_ADDR_CHANGE_CODE_MACADDR ;
 int IPA_ADDR_CHANGE_CODE_REMOVAL ;
 int IPA_ADDR_CHANGE_CODE_VLANID ;
 int KOBJ_CHANGE ;



 int kobject_uevent_env (int *,int ,char**) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void qeth_bridge_emit_host_event(struct qeth_card *card,
 enum qeth_an_event_type evtype,
 u8 code, struct net_if_token *token, struct mac_addr_lnid *addr_lnid)
{
 char str[7][32];
 char *env[8];
 int i = 0;

 switch (evtype) {
 case 129:
  snprintf(str[i], sizeof(str[i]), "BRIDGEDHOST=%s",
    (code & IPA_ADDR_CHANGE_CODE_REMOVAL)
    ? "deregister" : "register");
  env[i] = str[i]; i++;
  if (code & IPA_ADDR_CHANGE_CODE_VLANID) {
   snprintf(str[i], sizeof(str[i]), "VLAN=%d",
    addr_lnid->lnid);
   env[i] = str[i]; i++;
  }
  if (code & IPA_ADDR_CHANGE_CODE_MACADDR) {
   snprintf(str[i], sizeof(str[i]), "MAC=%pM",
    addr_lnid->mac);
   env[i] = str[i]; i++;
  }
  snprintf(str[i], sizeof(str[i]), "NTOK_BUSID=%x.%x.%04x",
   token->cssid, token->ssid, token->devnum);
  env[i] = str[i]; i++;
  snprintf(str[i], sizeof(str[i]), "NTOK_IID=%02x", token->iid);
  env[i] = str[i]; i++;
  snprintf(str[i], sizeof(str[i]), "NTOK_CHPID=%02x",
    token->chpid);
  env[i] = str[i]; i++;
  snprintf(str[i], sizeof(str[i]), "NTOK_CHID=%04x", token->chid);
  env[i] = str[i]; i++;
  break;
 case 130:
  snprintf(str[i], sizeof(str[i]), "BRIDGEDHOST=abort");
  env[i] = str[i]; i++;
  break;
 case 128:
  snprintf(str[i], sizeof(str[i]), "BRIDGEDHOST=reset");
  env[i] = str[i]; i++;
  break;
 }
 env[i] = ((void*)0);
 kobject_uevent_env(&card->gdev->dev.kobj, KOBJ_CHANGE, env);
}
