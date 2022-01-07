
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;


 int DBG_871X (char*,int const) ;
__attribute__((used)) static s16 get_rate_sctn_idx(const u8 rate)
{
 switch (rate) {
 case 208: case 206: case 202: case 211:
  return 0;
 case 201: case 200: case 210: case 209:
 case 207: case 205: case 204: case 203:
  return 1;
 case 199: case 198: case 187: case 176:
 case 173: case 172: case 171: case 170:
  return 2;
 case 169: case 168: case 197: case 196:
 case 195: case 194: case 193: case 192:
  return 3;
 case 191: case 190: case 189: case 188:
 case 186: case 185: case 184: case 183:
  return 4;
 case 182: case 181: case 180: case 179:
 case 178: case 177: case 175: case 174:
  return 5;
 case 167: case 166: case 165:
 case 164: case 163: case 162:
 case 161: case 160: case 159:
 case 158:
  return 6;
 case 157: case 156: case 155:
 case 154: case 153: case 152:
 case 151: case 150: case 149:
 case 148:
  return 7;
 case 147: case 146: case 145:
 case 144: case 143: case 142:
 case 141: case 140: case 139:
 case 138:
  return 8;
 case 137: case 136: case 135:
 case 134: case 133: case 132:
 case 131: case 130: case 129:
 case 128:
  return 9;
 default:
  DBG_871X("Wrong rate 0x%x\n", rate);
  return -1;
 }
}
