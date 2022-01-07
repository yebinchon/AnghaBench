
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
 int S_IRUGO ;

umode_t beiscsi_attr_is_visible(int param_type, int param)
{
 switch (param_type) {
 case 168:
  switch (param) {
  case 167:
  case 166:
  case 163:
  case 165:
  case 164:
  case 162:
  case 160:
  case 159:
  case 161:
   return S_IRUGO;
  default:
   return 0;
  }
 case 173:
  switch (param) {
  case 172:
  case 171:
  case 169:
  case 170:
   return S_IRUGO;
  default:
   return 0;
  }
 case 158:
  switch (param) {
  case 140:
  case 139:
  case 148:
  case 154:
  case 156:
  case 155:
  case 151:
  case 135:
  case 134:
  case 133:
  case 132:
  case 145:
  case 141:
  case 146:
  case 149:
  case 142:
  case 136:
  case 153:
  case 152:
  case 131:
  case 130:
  case 129:
  case 138:
  case 128:
  case 137:
  case 150:
  case 157:
  case 143:
  case 147:
  case 144:
   return S_IRUGO;
  default:
   return 0;
  }
 }

 return 0;
}
