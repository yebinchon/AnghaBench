
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {TYPE_1__* chan; } ;
struct TYPE_6__ {TYPE_2__ chandef; } ;
struct ieee80211_hw {TYPE_3__ conf; } ;
struct TYPE_4__ {scalar_t__ band; } ;
 scalar_t__ NL80211_BAND_2GHZ ;

int rtlwifi_rate_mapping(struct ieee80211_hw *hw, bool isht, bool isvht,
    u8 desc_rate)
{
 int rate_idx;

 if (isvht) {
  switch (desc_rate) {
  case 147:
   rate_idx = 0;
   break;
  case 146:
   rate_idx = 1;
   break;
  case 145:
   rate_idx = 2;
   break;
  case 144:
   rate_idx = 3;
   break;
  case 143:
   rate_idx = 4;
   break;
  case 142:
   rate_idx = 5;
   break;
  case 141:
   rate_idx = 6;
   break;
  case 140:
   rate_idx = 7;
   break;
  case 139:
   rate_idx = 8;
   break;
  case 138:
   rate_idx = 9;
   break;
  case 137:
   rate_idx = 0;
   break;
  case 136:
   rate_idx = 1;
   break;
  case 135:
   rate_idx = 2;
   break;
  case 134:
   rate_idx = 3;
   break;
  case 133:
   rate_idx = 4;
   break;
  case 132:
   rate_idx = 5;
   break;
  case 131:
   rate_idx = 6;
   break;
  case 130:
   rate_idx = 7;
   break;
  case 129:
   rate_idx = 8;
   break;
  case 128:
   rate_idx = 9;
   break;
  default:
   rate_idx = 0;
   break;
  }
  return rate_idx;
 }
 if (0 == isht) {
  if (NL80211_BAND_2GHZ == hw->conf.chandef.chan->band) {
   switch (desc_rate) {
   case 172:
    rate_idx = 0;
    break;
   case 170:
    rate_idx = 1;
    break;
   case 166:
    rate_idx = 2;
    break;
   case 175:
    rate_idx = 3;
    break;
   case 165:
    rate_idx = 4;
    break;
   case 164:
    rate_idx = 5;
    break;
   case 174:
    rate_idx = 6;
    break;
   case 173:
    rate_idx = 7;
    break;
   case 171:
    rate_idx = 8;
    break;
   case 169:
    rate_idx = 9;
    break;
   case 168:
    rate_idx = 10;
    break;
   case 167:
    rate_idx = 11;
    break;
   default:
    rate_idx = 0;
    break;
   }
  } else {
   switch (desc_rate) {
   case 165:
    rate_idx = 0;
    break;
   case 164:
    rate_idx = 1;
    break;
   case 174:
    rate_idx = 2;
    break;
   case 173:
    rate_idx = 3;
    break;
   case 171:
    rate_idx = 4;
    break;
   case 169:
    rate_idx = 5;
    break;
   case 168:
    rate_idx = 6;
    break;
   case 167:
    rate_idx = 7;
    break;
   default:
    rate_idx = 0;
    break;
   }
  }
 } else {
  switch (desc_rate) {
  case 163:
   rate_idx = 0;
   break;
  case 162:
   rate_idx = 1;
   break;
  case 155:
   rate_idx = 2;
   break;
  case 154:
   rate_idx = 3;
   break;
  case 153:
   rate_idx = 4;
   break;
  case 152:
   rate_idx = 5;
   break;
  case 151:
   rate_idx = 6;
   break;
  case 150:
   rate_idx = 7;
   break;
  case 149:
   rate_idx = 8;
   break;
  case 148:
   rate_idx = 9;
   break;
  case 161:
   rate_idx = 10;
   break;
  case 160:
   rate_idx = 11;
   break;
  case 159:
   rate_idx = 12;
   break;
  case 158:
   rate_idx = 13;
   break;
  case 157:
   rate_idx = 14;
   break;
  case 156:
   rate_idx = 15;
   break;
  default:
   rate_idx = 0;
   break;
  }
 }
 return rate_idx;
}
