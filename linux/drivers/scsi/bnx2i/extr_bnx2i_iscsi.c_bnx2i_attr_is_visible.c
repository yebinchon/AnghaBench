
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
 int S_IRUGO ;

__attribute__((used)) static umode_t bnx2i_attr_is_visible(int param_type, int param)
{
 switch (param_type) {
 case 166:
  switch (param) {
  case 163:
  case 165:
  case 164:
   return S_IRUGO;
  default:
   return 0;
  }
 case 162:
  switch (param) {
  case 141:
  case 140:
  case 149:
  case 155:
  case 157:
  case 156:
  case 152:
  case 136:
  case 135:
  case 134:
  case 133:
  case 146:
  case 142:
  case 147:
  case 150:
  case 143:
  case 137:
  case 154:
  case 153:
  case 132:
  case 130:
  case 129:
  case 139:
  case 128:
  case 138:
  case 151:
  case 161:
  case 144:
  case 131:
  case 148:
  case 145:
  case 159:
  case 160:
  case 158:
   return S_IRUGO;
  default:
   return 0;
  }
 }

 return 0;
}
