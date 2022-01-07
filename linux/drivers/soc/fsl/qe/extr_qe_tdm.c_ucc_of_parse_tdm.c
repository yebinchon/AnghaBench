
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* tdm_num; void* tx_sync; void* rx_sync; } ;
struct ucc_tdm_info {TYPE_1__ uf_info; } ;
struct ucc_tdm {int tdm_framer_type; void* siram_entry_id; int tdm_mode; void* tdm_port; void* rx_ts_mask; void* tx_ts_mask; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 void* QE_CLK_NONE ;
 void* QE_RSYNC_PIN ;
 void* QE_TSYNC_PIN ;
 int TDM_INTERNAL_LOOPBACK ;
 int TDM_NORMAL ;
 char* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32_index (struct device_node*,char*,int ,void**) ;
 int pr_err (char*) ;
 void* qe_clock_source (char const*) ;
 int set_si_param (struct ucc_tdm*,struct ucc_tdm_info*) ;
 int set_tdm_framer (char const*) ;

int ucc_of_parse_tdm(struct device_node *np, struct ucc_tdm *utdm,
       struct ucc_tdm_info *ut_info)
{
 const char *sprop;
 int ret = 0;
 u32 val;

 sprop = of_get_property(np, "fsl,rx-sync-clock", ((void*)0));
 if (sprop) {
  ut_info->uf_info.rx_sync = qe_clock_source(sprop);
  if ((ut_info->uf_info.rx_sync < QE_CLK_NONE) ||
      (ut_info->uf_info.rx_sync > QE_RSYNC_PIN)) {
   pr_err("QE-TDM: Invalid rx-sync-clock property\n");
   return -EINVAL;
  }
 } else {
  pr_err("QE-TDM: Invalid rx-sync-clock property\n");
  return -EINVAL;
 }

 sprop = of_get_property(np, "fsl,tx-sync-clock", ((void*)0));
 if (sprop) {
  ut_info->uf_info.tx_sync = qe_clock_source(sprop);
  if ((ut_info->uf_info.tx_sync < QE_CLK_NONE) ||
      (ut_info->uf_info.tx_sync > QE_TSYNC_PIN)) {
   pr_err("QE-TDM: Invalid tx-sync-clock property\n");
  return -EINVAL;
  }
 } else {
  pr_err("QE-TDM: Invalid tx-sync-clock property\n");
  return -EINVAL;
 }

 ret = of_property_read_u32_index(np, "fsl,tx-timeslot-mask", 0, &val);
 if (ret) {
  pr_err("QE-TDM: Invalid tx-timeslot-mask property\n");
  return -EINVAL;
 }
 utdm->tx_ts_mask = val;

 ret = of_property_read_u32_index(np, "fsl,rx-timeslot-mask", 0, &val);
 if (ret) {
  ret = -EINVAL;
  pr_err("QE-TDM: Invalid rx-timeslot-mask property\n");
  return ret;
 }
 utdm->rx_ts_mask = val;

 ret = of_property_read_u32_index(np, "fsl,tdm-id", 0, &val);
 if (ret) {
  ret = -EINVAL;
  pr_err("QE-TDM: No fsl,tdm-id property for this UCC\n");
  return ret;
 }
 utdm->tdm_port = val;
 ut_info->uf_info.tdm_num = utdm->tdm_port;

 if (of_property_read_bool(np, "fsl,tdm-internal-loopback"))
  utdm->tdm_mode = TDM_INTERNAL_LOOPBACK;
 else
  utdm->tdm_mode = TDM_NORMAL;

 sprop = of_get_property(np, "fsl,tdm-framer-type", ((void*)0));
 if (!sprop) {
  ret = -EINVAL;
  pr_err("QE-TDM: No tdm-framer-type property for UCC\n");
  return ret;
 }
 ret = set_tdm_framer(sprop);
 if (ret < 0)
  return -EINVAL;
 utdm->tdm_framer_type = ret;

 ret = of_property_read_u32_index(np, "fsl,siram-entry-id", 0, &val);
 if (ret) {
  ret = -EINVAL;
  pr_err("QE-TDM: No siram entry id for UCC\n");
  return ret;
 }
 utdm->siram_entry_id = val;

 set_si_param(utdm, ut_info);
 return ret;
}
