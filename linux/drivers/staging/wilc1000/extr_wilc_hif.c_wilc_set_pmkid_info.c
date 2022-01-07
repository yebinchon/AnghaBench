
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wilc_vif {int dummy; } ;
struct wilc_pmkid_attr {int numpmkid; } ;
struct wilc_pmkid {int dummy; } ;
struct wid {int size; int * val; int type; int id; } ;


 int WID_PMKID_INFO ;
 int WID_STR ;
 int WILC_SET_CFG ;
 int wilc_send_config_pkt (struct wilc_vif*,int ,struct wid*,int) ;

int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
{
 struct wid wid;

 wid.id = WID_PMKID_INFO;
 wid.type = WID_STR;
 wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
 wid.val = (u8 *)pmkid;

 return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1);
}
