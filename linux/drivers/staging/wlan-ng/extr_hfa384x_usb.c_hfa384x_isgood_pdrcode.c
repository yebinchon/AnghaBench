
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int hfa384x_isgood_pdrcode(u16 pdrcode)
{
 switch (pdrcode) {
 case 152:
 case 137:
 case 133:
 case 138:
 case 141:
 case 139:
 case 142:
 case 154:
 case 140:
 case 143:
 case 132:
 case 155:
 case 153:
 case 129:
 case 144:
 case 130:
 case 151:
 case 145:
 case 148:
 case 149:
 case 150:
 case 156:
 case 128:
 case 136:
 case 135:
 case 134:
 case 131:
 case 146:
 case 147:

  return 1;
 default:
  if (pdrcode < 0x1000) {

   pr_debug("Encountered unknown PDR#=0x%04x, assuming it's ok.\n",
     pdrcode);
   return 1;
  }
  break;
 }

 pr_debug("Encountered unknown PDR#=0x%04x, (>=0x1000), assuming it's bad.\n",
   pdrcode);
 return 0;
}
