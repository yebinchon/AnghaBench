
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlink_tlv_reg_rule {int flags; int dfs_cac_ms; int max_eirp; int max_antenna_gain; int max_bandwidth_khz; int end_freq_khz; int start_freq_khz; } ;
struct TYPE_3__ {void* max_eirp; void* max_antenna_gain; } ;
struct TYPE_4__ {void* max_bandwidth_khz; void* end_freq_khz; void* start_freq_khz; } ;
struct ieee80211_reg_rule {int flags; void* dfs_cac_ms; TYPE_1__ power_rule; TYPE_2__ freq_range; } ;


 void* le32_to_cpu (int ) ;
 int qtnf_reg_rule_flags_parse (void*) ;

void qlink_utils_regrule_q2nl(struct ieee80211_reg_rule *rule,
         const struct qlink_tlv_reg_rule *tlv)
{
 rule->freq_range.start_freq_khz = le32_to_cpu(tlv->start_freq_khz);
 rule->freq_range.end_freq_khz = le32_to_cpu(tlv->end_freq_khz);
 rule->freq_range.max_bandwidth_khz =
  le32_to_cpu(tlv->max_bandwidth_khz);
 rule->power_rule.max_antenna_gain = le32_to_cpu(tlv->max_antenna_gain);
 rule->power_rule.max_eirp = le32_to_cpu(tlv->max_eirp);
 rule->dfs_cac_ms = le32_to_cpu(tlv->dfs_cac_ms);
 rule->flags = qtnf_reg_rule_flags_parse(le32_to_cpu(tlv->flags));
}
