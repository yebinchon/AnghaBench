
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DBG_871X (char*,int) ;
 int MGN_11M ;
 int MGN_12M ;
 int MGN_18M ;
 int MGN_1M ;
 int MGN_24M ;
 int MGN_2M ;
 int MGN_36M ;
 int MGN_48M ;
 int MGN_54M ;
 int MGN_5_5M ;
 int MGN_6M ;
 int MGN_9M ;
 int MGN_MCS0 ;
 int MGN_MCS1 ;
 int MGN_MCS10 ;
 int MGN_MCS11 ;
 int MGN_MCS12 ;
 int MGN_MCS13 ;
 int MGN_MCS14 ;
 int MGN_MCS15 ;
 int MGN_MCS16 ;
 int MGN_MCS17 ;
 int MGN_MCS18 ;
 int MGN_MCS19 ;
 int MGN_MCS2 ;
 int MGN_MCS20 ;
 int MGN_MCS21 ;
 int MGN_MCS22 ;
 int MGN_MCS23 ;
 int MGN_MCS24 ;
 int MGN_MCS25 ;
 int MGN_MCS26 ;
 int MGN_MCS27 ;
 int MGN_MCS28 ;
 int MGN_MCS29 ;
 int MGN_MCS3 ;
 int MGN_MCS30 ;
 int MGN_MCS31 ;
 int MGN_MCS4 ;
 int MGN_MCS5 ;
 int MGN_MCS6 ;
 int MGN_MCS7 ;
 int MGN_MCS8 ;
 int MGN_MCS9 ;
 int MGN_VHT1SS_MCS0 ;
 int MGN_VHT1SS_MCS1 ;
 int MGN_VHT1SS_MCS2 ;
 int MGN_VHT1SS_MCS3 ;
 int MGN_VHT1SS_MCS4 ;
 int MGN_VHT1SS_MCS5 ;
 int MGN_VHT1SS_MCS6 ;
 int MGN_VHT1SS_MCS7 ;
 int MGN_VHT1SS_MCS8 ;
 int MGN_VHT1SS_MCS9 ;
 int MGN_VHT2SS_MCS0 ;
 int MGN_VHT2SS_MCS1 ;
 int MGN_VHT2SS_MCS2 ;
 int MGN_VHT2SS_MCS3 ;
 int MGN_VHT2SS_MCS4 ;
 int MGN_VHT2SS_MCS5 ;
 int MGN_VHT2SS_MCS6 ;
 int MGN_VHT2SS_MCS7 ;
 int MGN_VHT2SS_MCS8 ;
 int MGN_VHT2SS_MCS9 ;
 int MGN_VHT3SS_MCS0 ;
 int MGN_VHT3SS_MCS1 ;
 int MGN_VHT3SS_MCS2 ;
 int MGN_VHT3SS_MCS3 ;
 int MGN_VHT3SS_MCS4 ;
 int MGN_VHT3SS_MCS5 ;
 int MGN_VHT3SS_MCS6 ;
 int MGN_VHT3SS_MCS7 ;
 int MGN_VHT3SS_MCS8 ;
 int MGN_VHT3SS_MCS9 ;
 int MGN_VHT4SS_MCS0 ;
 int MGN_VHT4SS_MCS1 ;
 int MGN_VHT4SS_MCS2 ;
 int MGN_VHT4SS_MCS3 ;
 int MGN_VHT4SS_MCS4 ;
 int MGN_VHT4SS_MCS5 ;
 int MGN_VHT4SS_MCS6 ;
 int MGN_VHT4SS_MCS7 ;
 int MGN_VHT4SS_MCS8 ;
 int MGN_VHT4SS_MCS9 ;

u8 HwRateToMRate(u8 rate)
{
 u8 ret_rate = MGN_1M;

 switch (rate) {
 case 208:
  ret_rate = MGN_1M;
  break;
 case 206:
  ret_rate = MGN_2M;
  break;
 case 202:
  ret_rate = MGN_5_5M;
  break;
 case 211:
  ret_rate = MGN_11M;
  break;
 case 201:
  ret_rate = MGN_6M;
  break;
 case 200:
  ret_rate = MGN_9M;
  break;
 case 210:
  ret_rate = MGN_12M;
  break;
 case 209:
  ret_rate = MGN_18M;
  break;
 case 207:
  ret_rate = MGN_24M;
  break;
 case 205:
  ret_rate = MGN_36M;
  break;
 case 204:
  ret_rate = MGN_48M;
  break;
 case 203:
  ret_rate = MGN_54M;
  break;
 case 199:
  ret_rate = MGN_MCS0;
  break;
 case 198:
  ret_rate = MGN_MCS1;
  break;
 case 187:
  ret_rate = MGN_MCS2;
  break;
 case 176:
  ret_rate = MGN_MCS3;
  break;
 case 173:
  ret_rate = MGN_MCS4;
  break;
 case 172:
  ret_rate = MGN_MCS5;
  break;
 case 171:
  ret_rate = MGN_MCS6;
  break;
 case 170:
  ret_rate = MGN_MCS7;
  break;
 case 169:
  ret_rate = MGN_MCS8;
  break;
 case 168:
  ret_rate = MGN_MCS9;
  break;
 case 197:
  ret_rate = MGN_MCS10;
  break;
 case 196:
  ret_rate = MGN_MCS11;
  break;
 case 195:
  ret_rate = MGN_MCS12;
  break;
 case 194:
  ret_rate = MGN_MCS13;
  break;
 case 193:
  ret_rate = MGN_MCS14;
  break;
 case 192:
  ret_rate = MGN_MCS15;
  break;
 case 191:
  ret_rate = MGN_MCS16;
  break;
 case 190:
  ret_rate = MGN_MCS17;
  break;
 case 189:
  ret_rate = MGN_MCS18;
  break;
 case 188:
  ret_rate = MGN_MCS19;
  break;
 case 186:
  ret_rate = MGN_MCS20;
  break;
 case 185:
  ret_rate = MGN_MCS21;
  break;
 case 184:
  ret_rate = MGN_MCS22;
  break;
 case 183:
  ret_rate = MGN_MCS23;
  break;
 case 182:
  ret_rate = MGN_MCS24;
  break;
 case 181:
  ret_rate = MGN_MCS25;
  break;
 case 180:
  ret_rate = MGN_MCS26;
  break;
 case 179:
  ret_rate = MGN_MCS27;
  break;
 case 178:
  ret_rate = MGN_MCS28;
  break;
 case 177:
  ret_rate = MGN_MCS29;
  break;
 case 175:
  ret_rate = MGN_MCS30;
  break;
 case 174:
  ret_rate = MGN_MCS31;
  break;
 case 167:
  ret_rate = MGN_VHT1SS_MCS0;
  break;
 case 166:
  ret_rate = MGN_VHT1SS_MCS1;
  break;
 case 165:
  ret_rate = MGN_VHT1SS_MCS2;
  break;
 case 164:
  ret_rate = MGN_VHT1SS_MCS3;
  break;
 case 163:
  ret_rate = MGN_VHT1SS_MCS4;
  break;
 case 162:
  ret_rate = MGN_VHT1SS_MCS5;
  break;
 case 161:
  ret_rate = MGN_VHT1SS_MCS6;
  break;
 case 160:
  ret_rate = MGN_VHT1SS_MCS7;
  break;
 case 159:
  ret_rate = MGN_VHT1SS_MCS8;
  break;
 case 158:
  ret_rate = MGN_VHT1SS_MCS9;
  break;
 case 157:
  ret_rate = MGN_VHT2SS_MCS0;
  break;
 case 156:
  ret_rate = MGN_VHT2SS_MCS1;
  break;
 case 155:
  ret_rate = MGN_VHT2SS_MCS2;
  break;
 case 154:
  ret_rate = MGN_VHT2SS_MCS3;
  break;
 case 153:
  ret_rate = MGN_VHT2SS_MCS4;
  break;
 case 152:
  ret_rate = MGN_VHT2SS_MCS5;
  break;
 case 151:
  ret_rate = MGN_VHT2SS_MCS6;
  break;
 case 150:
  ret_rate = MGN_VHT2SS_MCS7;
  break;
 case 149:
  ret_rate = MGN_VHT2SS_MCS8;
  break;
 case 148:
  ret_rate = MGN_VHT2SS_MCS9;
  break;
 case 147:
  ret_rate = MGN_VHT3SS_MCS0;
  break;
 case 146:
  ret_rate = MGN_VHT3SS_MCS1;
  break;
 case 145:
  ret_rate = MGN_VHT3SS_MCS2;
  break;
 case 144:
  ret_rate = MGN_VHT3SS_MCS3;
  break;
 case 143:
  ret_rate = MGN_VHT3SS_MCS4;
  break;
 case 142:
  ret_rate = MGN_VHT3SS_MCS5;
  break;
 case 141:
  ret_rate = MGN_VHT3SS_MCS6;
  break;
 case 140:
  ret_rate = MGN_VHT3SS_MCS7;
  break;
 case 139:
  ret_rate = MGN_VHT3SS_MCS8;
  break;
 case 138:
  ret_rate = MGN_VHT3SS_MCS9;
  break;
 case 137:
  ret_rate = MGN_VHT4SS_MCS0;
  break;
 case 136:
  ret_rate = MGN_VHT4SS_MCS1;
  break;
 case 135:
  ret_rate = MGN_VHT4SS_MCS2;
  break;
 case 134:
  ret_rate = MGN_VHT4SS_MCS3;
  break;
 case 133:
  ret_rate = MGN_VHT4SS_MCS4;
  break;
 case 132:
  ret_rate = MGN_VHT4SS_MCS5;
  break;
 case 131:
  ret_rate = MGN_VHT4SS_MCS6;
  break;
 case 130:
  ret_rate = MGN_VHT4SS_MCS7;
  break;
 case 129:
  ret_rate = MGN_VHT4SS_MCS8;
  break;
 case 128:
  ret_rate = MGN_VHT4SS_MCS9;
  break;

 default:
  DBG_871X("HwRateToMRate(): Non supported Rate [%x]!!!\n", rate);
  break;
 }

 return ret_rate;
}
