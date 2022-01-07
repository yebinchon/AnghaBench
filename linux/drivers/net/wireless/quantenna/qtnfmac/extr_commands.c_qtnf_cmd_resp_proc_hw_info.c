
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
typedef int u16 ;
struct qtnf_hw_info {void* hw_version; int fw_version; void* hw_capab; int total_rx_chain; int total_tx_chain; int mac_bitmap; void* fw_ver; int max_scan_ssids; void* ql_proto_ver; int num_mac; } ;
struct qtnf_bus {struct qtnf_hw_info hw_info; } ;
struct qlink_tlv_hdr {int * val; int len; int type; } ;
struct qlink_resp_get_hw_info {scalar_t__ info; int hw_ver; int plat_id; int bld_tmstamp; int hw_capab; int total_rx_chain; int total_tx_chain; int ql_proto_ver; int fw_ver; int mac_bitmap; int num_mac; } ;


 int EINVAL ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int pr_info (char*,char const*,char const*,char const*,char const*,unsigned long,...) ;
 int pr_warn (char*,int,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
qtnf_cmd_resp_proc_hw_info(struct qtnf_bus *bus,
      const struct qlink_resp_get_hw_info *resp,
      size_t info_len)
{
 struct qtnf_hw_info *hwinfo = &bus->hw_info;
 const struct qlink_tlv_hdr *tlv;
 const char *bld_name = ((void*)0);
 const char *bld_rev = ((void*)0);
 const char *bld_type = ((void*)0);
 const char *bld_label = ((void*)0);
 u32 bld_tmstamp = 0;
 u32 plat_id = 0;
 const char *hw_id = ((void*)0);
 const char *calibration_ver = ((void*)0);
 const char *uboot_ver = ((void*)0);
 u32 hw_ver = 0;
 u16 tlv_type;
 u16 tlv_value_len;

 hwinfo->num_mac = resp->num_mac;
 hwinfo->mac_bitmap = resp->mac_bitmap;
 hwinfo->fw_ver = le32_to_cpu(resp->fw_ver);
 hwinfo->ql_proto_ver = le16_to_cpu(resp->ql_proto_ver);
 hwinfo->total_tx_chain = resp->total_tx_chain;
 hwinfo->total_rx_chain = resp->total_rx_chain;
 hwinfo->hw_capab = le32_to_cpu(resp->hw_capab);

 bld_tmstamp = le32_to_cpu(resp->bld_tmstamp);
 plat_id = le32_to_cpu(resp->plat_id);
 hw_ver = le32_to_cpu(resp->hw_ver);

 tlv = (const struct qlink_tlv_hdr *)resp->info;

 while (info_len >= sizeof(*tlv)) {
  tlv_type = le16_to_cpu(tlv->type);
  tlv_value_len = le16_to_cpu(tlv->len);

  if (tlv_value_len + sizeof(*tlv) > info_len) {
   pr_warn("malformed TLV 0x%.2X; LEN: %u\n",
    tlv_type, tlv_value_len);
   return -EINVAL;
  }

  switch (tlv_type) {
  case 134:
   bld_name = (const void *)tlv->val;
   break;
  case 133:
   bld_rev = (const void *)tlv->val;
   break;
  case 132:
   bld_type = (const void *)tlv->val;
   break;
  case 135:
   bld_label = (const void *)tlv->val;
   break;
  case 130:
   hw_id = (const void *)tlv->val;
   break;
  case 131:
   calibration_ver = (const void *)tlv->val;
   break;
  case 128:
   uboot_ver = (const void *)tlv->val;
   break;
  case 129:
   hwinfo->max_scan_ssids = *tlv->val;
   break;
  default:
   break;
  }

  info_len -= tlv_value_len + sizeof(*tlv);
  tlv = (struct qlink_tlv_hdr *)(tlv->val + tlv_value_len);
 }

 pr_info("fw_version=%d, MACs map %#x, chains Tx=%u Rx=%u, capab=0x%x\n",
  hwinfo->fw_ver, hwinfo->mac_bitmap,
  hwinfo->total_tx_chain, hwinfo->total_rx_chain,
  hwinfo->hw_capab);

 pr_info("\nBuild name:            %s" "\nBuild revision:        %s" "\nBuild type:            %s" "\nBuild label:           %s" "\nBuild timestamp:       %lu" "\nPlatform ID:           %lu" "\nHardware ID:           %s" "\nCalibration version:   %s" "\nU-Boot version:        %s" "\nHardware version:      0x%08x\n",
  bld_name, bld_rev, bld_type, bld_label,
  (unsigned long)bld_tmstamp,
  (unsigned long)plat_id,
  hw_id, calibration_ver, uboot_ver, hw_ver);

 strlcpy(hwinfo->fw_version, bld_label, sizeof(hwinfo->fw_version));
 hwinfo->hw_version = hw_ver;

 return 0;
}
