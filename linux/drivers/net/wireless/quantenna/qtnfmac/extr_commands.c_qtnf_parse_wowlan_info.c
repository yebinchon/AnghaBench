
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy_wowlan_support {int flags; void* pattern_min_len; void* pattern_max_len; void* n_patterns; } ;
struct qtnf_mac_info {struct wiphy_wowlan_support* wowlan; } ;
struct qtnf_wmac {int macid; struct qtnf_mac_info macinfo; } ;
struct qlink_wowlan_support {int pattern_min_len; int pattern_max_len; int n_patterns; } ;
struct qlink_wowlan_capab_data {int version; scalar_t__ data; } ;


 int GFP_KERNEL ;
 int WIPHY_WOWLAN_DISCONNECT ;
 int WIPHY_WOWLAN_MAGIC_PKT ;
 int kfree (struct wiphy_wowlan_support*) ;
 struct wiphy_wowlan_support* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int pr_warn (char*,int ,int) ;

__attribute__((used)) static void
qtnf_parse_wowlan_info(struct qtnf_wmac *mac,
         const struct qlink_wowlan_capab_data *wowlan)
{
 struct qtnf_mac_info *mac_info = &mac->macinfo;
 const struct qlink_wowlan_support *data1;
 struct wiphy_wowlan_support *supp;

 supp = kzalloc(sizeof(*supp), GFP_KERNEL);
 if (!supp)
  return;

 switch (le16_to_cpu(wowlan->version)) {
 case 0x1:
  data1 = (struct qlink_wowlan_support *)wowlan->data;

  supp->flags = WIPHY_WOWLAN_MAGIC_PKT | WIPHY_WOWLAN_DISCONNECT;
  supp->n_patterns = le32_to_cpu(data1->n_patterns);
  supp->pattern_max_len = le32_to_cpu(data1->pattern_max_len);
  supp->pattern_min_len = le32_to_cpu(data1->pattern_min_len);

  mac_info->wowlan = supp;
  break;
 default:
  pr_warn("MAC%u: unsupported WoWLAN version 0x%x\n",
   mac->macid, le16_to_cpu(wowlan->version));
  kfree(supp);
  break;
 }
}
