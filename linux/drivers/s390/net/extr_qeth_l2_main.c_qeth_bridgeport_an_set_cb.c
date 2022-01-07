
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qeth_card {int dummy; } ;
struct TYPE_2__ {scalar_t__ lnid; } ;
struct qdio_brinfo_entry_l2 {TYPE_1__ addr_lnid; int nit; } ;
struct net_if_token {int dummy; } ;
struct mac_addr_lnid {int dummy; } ;
typedef enum qdio_brinfo_entry_type { ____Placeholder_qdio_brinfo_entry_type } qdio_brinfo_entry_type ;


 int IPA_ADDR_CHANGE_CODE_MACADDR ;
 int IPA_ADDR_CHANGE_CODE_VLANID ;
 scalar_t__ VLAN_N_VID ;
 int WARN_ON_ONCE (int) ;
 int anev_reg_unreg ;
 int l2_addr_lnid ;
 int qeth_bridge_emit_host_event (struct qeth_card*,int ,int ,struct net_if_token*,struct mac_addr_lnid*) ;

__attribute__((used)) static void qeth_bridgeport_an_set_cb(void *priv,
  enum qdio_brinfo_entry_type type, void *entry)
{
 struct qeth_card *card = (struct qeth_card *)priv;
 struct qdio_brinfo_entry_l2 *l2entry;
 u8 code;

 if (type != l2_addr_lnid) {
  WARN_ON_ONCE(1);
  return;
 }

 l2entry = (struct qdio_brinfo_entry_l2 *)entry;
 code = IPA_ADDR_CHANGE_CODE_MACADDR;
 if (l2entry->addr_lnid.lnid < VLAN_N_VID)
  code |= IPA_ADDR_CHANGE_CODE_VLANID;
 qeth_bridge_emit_host_event(card, anev_reg_unreg, code,
  (struct net_if_token *)&l2entry->nit,
  (struct mac_addr_lnid *)&l2entry->addr_lnid);
}
