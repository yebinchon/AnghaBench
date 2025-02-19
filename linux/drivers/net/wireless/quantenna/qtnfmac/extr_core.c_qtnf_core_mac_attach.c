
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qtnf_wmac {int wiphy_registered; } ;
struct TYPE_3__ {int iftype; int use_4addr; } ;
struct qtnf_vif {int * netdev; TYPE_1__ wdev; int mac_addr; } ;
struct TYPE_4__ {int mac_bitmap; } ;
struct qtnf_bus {TYPE_2__ hw_info; } ;


 int BIT (unsigned int) ;
 int EFAULT ;
 scalar_t__ IS_ERR (struct qtnf_wmac*) ;
 int NET_NAME_ENUM ;
 int NL80211_IFTYPE_UNSPECIFIED ;
 int PTR_ERR (struct qtnf_wmac*) ;
 int pr_debug (char*,unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int pr_info (char*,unsigned int) ;
 int qtnf_cmd_get_mac_info (struct qtnf_wmac*) ;
 int qtnf_cmd_send_add_intf (struct qtnf_vif*,int ,int ,int ) ;
 int qtnf_cmd_send_get_phy_params (struct qtnf_wmac*) ;
 struct qtnf_wmac* qtnf_core_mac_alloc (struct qtnf_bus*,unsigned int) ;
 int qtnf_core_mac_detach (struct qtnf_bus*,unsigned int) ;
 int qtnf_core_net_attach (struct qtnf_wmac*,struct qtnf_vif*,char*,int ) ;
 struct qtnf_vif* qtnf_mac_get_base_vif (struct qtnf_wmac*) ;
 int qtnf_mac_init_bands (struct qtnf_wmac*) ;
 int qtnf_wiphy_register (TYPE_2__*,struct qtnf_wmac*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qtnf_core_mac_attach(struct qtnf_bus *bus, unsigned int macid)
{
 struct qtnf_wmac *mac;
 struct qtnf_vif *vif;
 int ret;

 if (!(bus->hw_info.mac_bitmap & BIT(macid))) {
  pr_info("MAC%u is not active in FW\n", macid);
  return 0;
 }

 mac = qtnf_core_mac_alloc(bus, macid);
 if (IS_ERR(mac)) {
  pr_err("MAC%u allocation failed\n", macid);
  return PTR_ERR(mac);
 }

 ret = qtnf_cmd_get_mac_info(mac);
 if (ret) {
  pr_err("MAC%u: failed to get info\n", macid);
  goto error;
 }

 vif = qtnf_mac_get_base_vif(mac);
 if (!vif) {
  pr_err("MAC%u: primary VIF is not ready\n", macid);
  ret = -EFAULT;
  goto error;
 }

 ret = qtnf_cmd_send_add_intf(vif, vif->wdev.iftype,
         vif->wdev.use_4addr, vif->mac_addr);
 if (ret) {
  pr_err("MAC%u: failed to add VIF\n", macid);
  goto error;
 }

 ret = qtnf_cmd_send_get_phy_params(mac);
 if (ret) {
  pr_err("MAC%u: failed to get PHY settings\n", macid);
  goto error;
 }

 ret = qtnf_mac_init_bands(mac);
 if (ret) {
  pr_err("MAC%u: failed to init bands\n", macid);
  goto error;
 }

 ret = qtnf_wiphy_register(&bus->hw_info, mac);
 if (ret) {
  pr_err("MAC%u: wiphy registration failed\n", macid);
  goto error;
 }

 mac->wiphy_registered = 1;

 rtnl_lock();

 ret = qtnf_core_net_attach(mac, vif, "wlan%d", NET_NAME_ENUM);
 rtnl_unlock();

 if (ret) {
  pr_err("MAC%u: failed to attach netdev\n", macid);
  vif->wdev.iftype = NL80211_IFTYPE_UNSPECIFIED;
  vif->netdev = ((void*)0);
  goto error;
 }

 pr_debug("MAC%u initialized\n", macid);

 return 0;

error:
 qtnf_core_mac_detach(bus, macid);
 return ret;
}
