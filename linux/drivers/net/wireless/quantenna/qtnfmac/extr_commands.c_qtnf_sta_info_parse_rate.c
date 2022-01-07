
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rate_info {int legacy; int flags; int bw; int nss; int mcs; } ;
struct qlink_sta_info_rate {int bw; int flags; int nss; int mcs; int rate; } ;
 int QLINK_STA_INFO_RATE_FLAG_HT_MCS ;
 int QLINK_STA_INFO_RATE_FLAG_SHORT_GI ;
 int QLINK_STA_INFO_RATE_FLAG_VHT_MCS ;
 int RATE_INFO_BW_10 ;
 int RATE_INFO_BW_160 ;
 int RATE_INFO_BW_20 ;
 int RATE_INFO_BW_40 ;
 int RATE_INFO_BW_5 ;
 int RATE_INFO_BW_80 ;
 int RATE_INFO_FLAGS_MCS ;
 int RATE_INFO_FLAGS_SHORT_GI ;
 int RATE_INFO_FLAGS_VHT_MCS ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static void
qtnf_sta_info_parse_rate(struct rate_info *rate_dst,
    const struct qlink_sta_info_rate *rate_src)
{
 rate_dst->legacy = get_unaligned_le16(&rate_src->rate) * 10;

 rate_dst->mcs = rate_src->mcs;
 rate_dst->nss = rate_src->nss;
 rate_dst->flags = 0;

 switch (rate_src->bw) {
 case 129:
  rate_dst->bw = RATE_INFO_BW_5;
  break;
 case 134:
  rate_dst->bw = RATE_INFO_BW_10;
  break;
 case 132:
 case 131:
  rate_dst->bw = RATE_INFO_BW_20;
  break;
 case 130:
  rate_dst->bw = RATE_INFO_BW_40;
  break;
 case 128:
  rate_dst->bw = RATE_INFO_BW_80;
  break;
 case 133:
  rate_dst->bw = RATE_INFO_BW_160;
  break;
 default:
  rate_dst->bw = 0;
  break;
 }

 if (rate_src->flags & QLINK_STA_INFO_RATE_FLAG_HT_MCS)
  rate_dst->flags |= RATE_INFO_FLAGS_MCS;
 else if (rate_src->flags & QLINK_STA_INFO_RATE_FLAG_VHT_MCS)
  rate_dst->flags |= RATE_INFO_FLAGS_VHT_MCS;

 if (rate_src->flags & QLINK_STA_INFO_RATE_FLAG_SHORT_GI)
  rate_dst->flags |= RATE_INFO_FLAGS_SHORT_GI;
}
