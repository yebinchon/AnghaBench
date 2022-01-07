
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DESC_RATE11M ;
 int DESC_RATE12M ;
 int DESC_RATE18M ;
 int DESC_RATE1M ;
 int DESC_RATE24M ;
 int DESC_RATE2M ;
 int DESC_RATE36M ;
 int DESC_RATE48M ;
 int DESC_RATE54M ;
 int DESC_RATE5_5M ;
 int DESC_RATE6M ;
 int DESC_RATE9M ;
 int DESC_RATEMCS0 ;
 int DESC_RATEMCS1 ;
 int DESC_RATEMCS10 ;
 int DESC_RATEMCS11 ;
 int DESC_RATEMCS12 ;
 int DESC_RATEMCS13 ;
 int DESC_RATEMCS14 ;
 int DESC_RATEMCS15 ;
 int DESC_RATEMCS16 ;
 int DESC_RATEMCS17 ;
 int DESC_RATEMCS18 ;
 int DESC_RATEMCS19 ;
 int DESC_RATEMCS2 ;
 int DESC_RATEMCS20 ;
 int DESC_RATEMCS21 ;
 int DESC_RATEMCS22 ;
 int DESC_RATEMCS23 ;
 int DESC_RATEMCS24 ;
 int DESC_RATEMCS25 ;
 int DESC_RATEMCS26 ;
 int DESC_RATEMCS27 ;
 int DESC_RATEMCS28 ;
 int DESC_RATEMCS29 ;
 int DESC_RATEMCS3 ;
 int DESC_RATEMCS30 ;
 int DESC_RATEMCS31 ;
 int DESC_RATEMCS4 ;
 int DESC_RATEMCS5 ;
 int DESC_RATEMCS6 ;
 int DESC_RATEMCS7 ;
 int DESC_RATEMCS8 ;
 int DESC_RATEMCS9 ;
 int DESC_RATEVHTSS1MCS0 ;
 int DESC_RATEVHTSS1MCS1 ;
 int DESC_RATEVHTSS1MCS2 ;
 int DESC_RATEVHTSS1MCS3 ;
 int DESC_RATEVHTSS1MCS4 ;
 int DESC_RATEVHTSS1MCS5 ;
 int DESC_RATEVHTSS1MCS6 ;
 int DESC_RATEVHTSS1MCS7 ;
 int DESC_RATEVHTSS1MCS8 ;
 int DESC_RATEVHTSS1MCS9 ;
 int DESC_RATEVHTSS2MCS0 ;
 int DESC_RATEVHTSS2MCS1 ;
 int DESC_RATEVHTSS2MCS2 ;
 int DESC_RATEVHTSS2MCS3 ;
 int DESC_RATEVHTSS2MCS4 ;
 int DESC_RATEVHTSS2MCS5 ;
 int DESC_RATEVHTSS2MCS6 ;
 int DESC_RATEVHTSS2MCS7 ;
 int DESC_RATEVHTSS2MCS8 ;
 int DESC_RATEVHTSS2MCS9 ;
 int DESC_RATEVHTSS3MCS0 ;
 int DESC_RATEVHTSS3MCS1 ;
 int DESC_RATEVHTSS3MCS2 ;
 int DESC_RATEVHTSS3MCS3 ;
 int DESC_RATEVHTSS3MCS4 ;
 int DESC_RATEVHTSS3MCS5 ;
 int DESC_RATEVHTSS3MCS6 ;
 int DESC_RATEVHTSS3MCS7 ;
 int DESC_RATEVHTSS3MCS8 ;
 int DESC_RATEVHTSS3MCS9 ;
 int DESC_RATEVHTSS4MCS0 ;
 int DESC_RATEVHTSS4MCS1 ;
 int DESC_RATEVHTSS4MCS2 ;
 int DESC_RATEVHTSS4MCS3 ;
 int DESC_RATEVHTSS4MCS4 ;
 int DESC_RATEVHTSS4MCS5 ;
 int DESC_RATEVHTSS4MCS6 ;
 int DESC_RATEVHTSS4MCS7 ;
 int DESC_RATEVHTSS4MCS8 ;
 int DESC_RATEVHTSS4MCS9 ;
u8 MRateToHwRate(u8 rate)
{
 u8 ret = DESC_RATE1M;

 switch (rate) {
 case 208:
  ret = DESC_RATE1M;
  break;
 case 206:
  ret = DESC_RATE2M;
  break;
 case 202:
  ret = DESC_RATE5_5M;
  break;
 case 211:
  ret = DESC_RATE11M;
  break;
 case 201:
  ret = DESC_RATE6M;
  break;
 case 200:
  ret = DESC_RATE9M;
  break;
 case 210:
  ret = DESC_RATE12M;
  break;
 case 209:
  ret = DESC_RATE18M;
  break;
 case 207:
  ret = DESC_RATE24M;
  break;
 case 205:
  ret = DESC_RATE36M;
  break;
 case 204:
  ret = DESC_RATE48M;
  break;
 case 203:
  ret = DESC_RATE54M;
  break;
 case 199:
  ret = DESC_RATEMCS0;
  break;
 case 198:
  ret = DESC_RATEMCS1;
  break;
 case 187:
  ret = DESC_RATEMCS2;
  break;
 case 176:
  ret = DESC_RATEMCS3;
  break;
 case 173:
  ret = DESC_RATEMCS4;
  break;
 case 172:
  ret = DESC_RATEMCS5;
  break;
 case 171:
  ret = DESC_RATEMCS6;
  break;
 case 170:
  ret = DESC_RATEMCS7;
  break;
 case 169:
  ret = DESC_RATEMCS8;
  break;
 case 168:
  ret = DESC_RATEMCS9;
  break;
 case 197:
  ret = DESC_RATEMCS10;
  break;
 case 196:
  ret = DESC_RATEMCS11;
  break;
 case 195:
  ret = DESC_RATEMCS12;
  break;
 case 194:
  ret = DESC_RATEMCS13;
  break;
 case 193:
  ret = DESC_RATEMCS14;
  break;
 case 192:
  ret = DESC_RATEMCS15;
  break;
 case 191:
  ret = DESC_RATEMCS16;
  break;
 case 190:
  ret = DESC_RATEMCS17;
  break;
 case 189:
  ret = DESC_RATEMCS18;
  break;
 case 188:
  ret = DESC_RATEMCS19;
  break;
 case 186:
  ret = DESC_RATEMCS20;
  break;
 case 185:
  ret = DESC_RATEMCS21;
  break;
 case 184:
  ret = DESC_RATEMCS22;
  break;
 case 183:
  ret = DESC_RATEMCS23;
  break;
 case 182:
  ret = DESC_RATEMCS24;
  break;
 case 181:
  ret = DESC_RATEMCS25;
  break;
 case 180:
  ret = DESC_RATEMCS26;
  break;
 case 179:
  ret = DESC_RATEMCS27;
  break;
 case 178:
  ret = DESC_RATEMCS28;
  break;
 case 177:
  ret = DESC_RATEMCS29;
  break;
 case 175:
  ret = DESC_RATEMCS30;
  break;
 case 174:
  ret = DESC_RATEMCS31;
  break;
 case 167:
  ret = DESC_RATEVHTSS1MCS0;
  break;
 case 166:
  ret = DESC_RATEVHTSS1MCS1;
  break;
 case 165:
  ret = DESC_RATEVHTSS1MCS2;
  break;
 case 164:
  ret = DESC_RATEVHTSS1MCS3;
  break;
 case 163:
  ret = DESC_RATEVHTSS1MCS4;
  break;
 case 162:
  ret = DESC_RATEVHTSS1MCS5;
  break;
 case 161:
  ret = DESC_RATEVHTSS1MCS6;
  break;
 case 160:
  ret = DESC_RATEVHTSS1MCS7;
  break;
 case 159:
  ret = DESC_RATEVHTSS1MCS8;
  break;
 case 158:
  ret = DESC_RATEVHTSS1MCS9;
  break;
 case 157:
  ret = DESC_RATEVHTSS2MCS0;
  break;
 case 156:
  ret = DESC_RATEVHTSS2MCS1;
  break;
 case 155:
  ret = DESC_RATEVHTSS2MCS2;
  break;
 case 154:
  ret = DESC_RATEVHTSS2MCS3;
  break;
 case 153:
  ret = DESC_RATEVHTSS2MCS4;
  break;
 case 152:
  ret = DESC_RATEVHTSS2MCS5;
  break;
 case 151:
  ret = DESC_RATEVHTSS2MCS6;
  break;
 case 150:
  ret = DESC_RATEVHTSS2MCS7;
  break;
 case 149:
  ret = DESC_RATEVHTSS2MCS8;
  break;
 case 148:
  ret = DESC_RATEVHTSS2MCS9;
  break;
 case 147:
  ret = DESC_RATEVHTSS3MCS0;
  break;
 case 146:
  ret = DESC_RATEVHTSS3MCS1;
  break;
 case 145:
  ret = DESC_RATEVHTSS3MCS2;
  break;
 case 144:
  ret = DESC_RATEVHTSS3MCS3;
  break;
 case 143:
  ret = DESC_RATEVHTSS3MCS4;
  break;
 case 142:
  ret = DESC_RATEVHTSS3MCS5;
  break;
 case 141:
  ret = DESC_RATEVHTSS3MCS6;
  break;
 case 140:
  ret = DESC_RATEVHTSS3MCS7;
  break;
 case 139:
  ret = DESC_RATEVHTSS3MCS8;
  break;
 case 138:
  ret = DESC_RATEVHTSS3MCS9;
  break;
 case 137:
  ret = DESC_RATEVHTSS4MCS0;
  break;
 case 136:
  ret = DESC_RATEVHTSS4MCS1;
  break;
 case 135:
  ret = DESC_RATEVHTSS4MCS2;
  break;
 case 134:
  ret = DESC_RATEVHTSS4MCS3;
  break;
 case 133:
  ret = DESC_RATEVHTSS4MCS4;
  break;
 case 132:
  ret = DESC_RATEVHTSS4MCS5;
  break;
 case 131:
  ret = DESC_RATEVHTSS4MCS6;
  break;
 case 130:
  ret = DESC_RATEVHTSS4MCS7;
  break;
 case 129:
  ret = DESC_RATEVHTSS4MCS8;
  break;
 case 128:
  ret = DESC_RATEVHTSS4MCS9;
  break;
 default:
  break;
 }

 return ret;
}
