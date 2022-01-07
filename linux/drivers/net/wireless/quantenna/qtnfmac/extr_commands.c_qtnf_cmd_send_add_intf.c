
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qtnf_vif {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int QLINK_CMD_ADD_INTF ;
 int qtnf_cmd_send_add_change_intf (struct qtnf_vif*,int,int,int *,int ) ;

int qtnf_cmd_send_add_intf(struct qtnf_vif *vif, enum nl80211_iftype iftype,
      int use4addr, u8 *mac_addr)
{
 return qtnf_cmd_send_add_change_intf(vif, iftype, use4addr, mac_addr,
   QLINK_CMD_ADD_INTF);
}
