
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct qlink_tlv_hdr {scalar_t__ val; int len; int type; } ;
struct qlink_resp_band_info_get {int num_chans; scalar_t__ info; } ;
struct qlink_channel {int dfs_state; int dfs_cac_ms; int beacon_found; scalar_t__ max_reg_power; scalar_t__ max_power; scalar_t__ max_antenna_gain; int center_freq; int hw_value; int flags; } ;
struct ieee80211_vht_cap {int dummy; } ;
struct ieee80211_channel {int max_antenna_gain; int max_power; int max_reg_power; int flags; void* hw_value; int dfs_state; int dfs_state_entered; void* dfs_cac_ms; int beacon_found; void* center_freq; int band; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; struct ieee80211_channel vht_cap; struct ieee80211_channel ht_cap; int band; } ;
struct ieee80211_ht_cap {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IEEE80211_CHAN_DISABLED ;
 int IEEE80211_CHAN_INDOOR_ONLY ;
 int IEEE80211_CHAN_IR_CONCURRENT ;
 int IEEE80211_CHAN_NO_10MHZ ;
 int IEEE80211_CHAN_NO_160MHZ ;
 int IEEE80211_CHAN_NO_20MHZ ;
 int IEEE80211_CHAN_NO_80MHZ ;
 int IEEE80211_CHAN_NO_HT40MINUS ;
 int IEEE80211_CHAN_NO_HT40PLUS ;
 int IEEE80211_CHAN_NO_IR ;
 int IEEE80211_CHAN_NO_OFDM ;
 int IEEE80211_CHAN_RADAR ;
 int NL80211_DFS_AVAILABLE ;
 int NL80211_DFS_UNAVAILABLE ;
 int NL80211_DFS_USABLE ;
 int QLINK_CHAN_DISABLED ;
 int QLINK_CHAN_INDOOR_ONLY ;
 int QLINK_CHAN_IR_CONCURRENT ;
 int QLINK_CHAN_NO_10MHZ ;
 int QLINK_CHAN_NO_160MHZ ;
 int QLINK_CHAN_NO_20MHZ ;
 int QLINK_CHAN_NO_80MHZ ;
 int QLINK_CHAN_NO_HT40MINUS ;
 int QLINK_CHAN_NO_HT40PLUS ;
 int QLINK_CHAN_NO_IR ;
 int QLINK_CHAN_NO_OFDM ;
 int QLINK_CHAN_RADAR ;
 int QLINK_DFS_AVAILABLE ;
 int QLINK_DFS_USABLE ;



 int jiffies ;
 struct ieee80211_channel* kcalloc (int,int,int ) ;
 int kfree (struct ieee80211_channel*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memset (struct ieee80211_channel*,int ,int) ;
 int pr_debug (char*,void*,int ,int,int) ;
 int pr_err (char*,...) ;
 int pr_warn (char*,int,...) ;
 int qtnf_cmd_resp_band_fill_htcap (scalar_t__,struct ieee80211_channel*) ;
 int qtnf_cmd_resp_band_fill_vhtcap (scalar_t__,struct ieee80211_channel*) ;
 int unlikely (int) ;

__attribute__((used)) static int
qtnf_cmd_resp_fill_band_info(struct ieee80211_supported_band *band,
        struct qlink_resp_band_info_get *resp,
        size_t payload_len)
{
 u16 tlv_type;
 size_t tlv_len;
 size_t tlv_dlen;
 const struct qlink_tlv_hdr *tlv;
 const struct qlink_channel *qchan;
 struct ieee80211_channel *chan;
 unsigned int chidx = 0;
 u32 qflags;

 memset(&band->ht_cap, 0, sizeof(band->ht_cap));
 memset(&band->vht_cap, 0, sizeof(band->vht_cap));

 if (band->channels) {
  if (band->n_channels == resp->num_chans) {
   memset(band->channels, 0,
          sizeof(*band->channels) * band->n_channels);
  } else {
   kfree(band->channels);
   band->n_channels = 0;
   band->channels = ((void*)0);
  }
 }

 band->n_channels = resp->num_chans;
 if (band->n_channels == 0)
  return 0;

 if (!band->channels)
  band->channels = kcalloc(band->n_channels, sizeof(*chan),
      GFP_KERNEL);
 if (!band->channels) {
  band->n_channels = 0;
  return -ENOMEM;
 }

 tlv = (struct qlink_tlv_hdr *)resp->info;

 while (payload_len >= sizeof(*tlv)) {
  tlv_type = le16_to_cpu(tlv->type);
  tlv_dlen = le16_to_cpu(tlv->len);
  tlv_len = tlv_dlen + sizeof(*tlv);

  if (tlv_len > payload_len) {
   pr_warn("malformed TLV 0x%.2X; LEN: %zu\n",
    tlv_type, tlv_len);
   goto error_ret;
  }

  switch (tlv_type) {
  case 130:
   if (unlikely(tlv_dlen != sizeof(*qchan))) {
    pr_err("invalid channel TLV len %zu\n",
           tlv_len);
    goto error_ret;
   }

   if (chidx == band->n_channels) {
    pr_err("too many channel TLVs\n");
    goto error_ret;
   }

   qchan = (const struct qlink_channel *)tlv->val;
   chan = &band->channels[chidx++];
   qflags = le32_to_cpu(qchan->flags);

   chan->hw_value = le16_to_cpu(qchan->hw_value);
   chan->band = band->band;
   chan->center_freq = le16_to_cpu(qchan->center_freq);
   chan->max_antenna_gain = (int)qchan->max_antenna_gain;
   chan->max_power = (int)qchan->max_power;
   chan->max_reg_power = (int)qchan->max_reg_power;
   chan->beacon_found = qchan->beacon_found;
   chan->dfs_cac_ms = le32_to_cpu(qchan->dfs_cac_ms);
   chan->flags = 0;

   if (qflags & QLINK_CHAN_DISABLED)
    chan->flags |= IEEE80211_CHAN_DISABLED;

   if (qflags & QLINK_CHAN_NO_IR)
    chan->flags |= IEEE80211_CHAN_NO_IR;

   if (qflags & QLINK_CHAN_NO_HT40PLUS)
    chan->flags |= IEEE80211_CHAN_NO_HT40PLUS;

   if (qflags & QLINK_CHAN_NO_HT40MINUS)
    chan->flags |= IEEE80211_CHAN_NO_HT40MINUS;

   if (qflags & QLINK_CHAN_NO_OFDM)
    chan->flags |= IEEE80211_CHAN_NO_OFDM;

   if (qflags & QLINK_CHAN_NO_80MHZ)
    chan->flags |= IEEE80211_CHAN_NO_80MHZ;

   if (qflags & QLINK_CHAN_NO_160MHZ)
    chan->flags |= IEEE80211_CHAN_NO_160MHZ;

   if (qflags & QLINK_CHAN_INDOOR_ONLY)
    chan->flags |= IEEE80211_CHAN_INDOOR_ONLY;

   if (qflags & QLINK_CHAN_IR_CONCURRENT)
    chan->flags |= IEEE80211_CHAN_IR_CONCURRENT;

   if (qflags & QLINK_CHAN_NO_20MHZ)
    chan->flags |= IEEE80211_CHAN_NO_20MHZ;

   if (qflags & QLINK_CHAN_NO_10MHZ)
    chan->flags |= IEEE80211_CHAN_NO_10MHZ;

   if (qflags & QLINK_CHAN_RADAR) {
    chan->flags |= IEEE80211_CHAN_RADAR;
    chan->dfs_state_entered = jiffies;

    if (qchan->dfs_state == QLINK_DFS_USABLE)
     chan->dfs_state = NL80211_DFS_USABLE;
    else if (qchan->dfs_state ==
     QLINK_DFS_AVAILABLE)
     chan->dfs_state = NL80211_DFS_AVAILABLE;
    else
     chan->dfs_state =
      NL80211_DFS_UNAVAILABLE;
   }

   pr_debug("chan=%d flags=%#x max_pow=%d max_reg_pow=%d\n",
     chan->hw_value, chan->flags, chan->max_power,
     chan->max_reg_power);
   break;
  case 129:
   if (unlikely(tlv_dlen !=
         sizeof(struct ieee80211_ht_cap))) {
    pr_err("bad HTCAP TLV len %zu\n", tlv_dlen);
    goto error_ret;
   }

   qtnf_cmd_resp_band_fill_htcap(tlv->val, &band->ht_cap);
   break;
  case 128:
   if (unlikely(tlv_dlen !=
         sizeof(struct ieee80211_vht_cap))) {
    pr_err("bad VHTCAP TLV len %zu\n", tlv_dlen);
    goto error_ret;
   }

   qtnf_cmd_resp_band_fill_vhtcap(tlv->val,
             &band->vht_cap);
   break;
  default:
   pr_warn("unknown TLV type: %#x\n", tlv_type);
   break;
  }

  payload_len -= tlv_len;
  tlv = (struct qlink_tlv_hdr *)(tlv->val + tlv_dlen);
 }

 if (payload_len) {
  pr_err("malformed TLV buf; bytes left: %zu\n", payload_len);
  goto error_ret;
 }

 if (band->n_channels != chidx) {
  pr_err("channel count mismatch: reported=%d, parsed=%d\n",
         band->n_channels, chidx);
  goto error_ret;
 }

 return 0;

error_ret:
 kfree(band->channels);
 band->channels = ((void*)0);
 band->n_channels = 0;

 return -EINVAL;
}
