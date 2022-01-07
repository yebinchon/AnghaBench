
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int MBX_SHUTDOWN ;
__attribute__((used)) static int
lpfc_sli_chk_mbx_command(uint8_t mbxCommand)
{
 uint8_t ret;

 switch (mbxCommand) {
 case 171:
 case 164:
 case 130:
 case 129:
 case 146:
 case 177:
 case 182:
 case 186:
 case 184:
 case 149:
 case 168:
 case 163:
 case 159:
 case 157:
 case 161:
 case 155:
 case 162:
 case 165:
 case 153:
 case 134:
 case 188:
 case 179:
 case 180:
 case 144:
 case 148:
 case 131:
 case 181:
 case 183:
 case 143:
 case 140:
 case 139:
 case 136:
 case 174:
 case 187:
 case 189:
 case 173:
 case 145:
 case 185:
 case 158:
 case 160:
 case 152:
 case 156:
 case 128:
 case 141:
 case 172:
 case 191:
 case 150:
 case 132:
 case 178:
 case 170:
 case 169:
 case 138:
 case 137:
 case 154:
 case 135:
 case 151:
 case 133:
 case 175:
 case 176:
 case 147:
 case 166:
 case 167:
 case 142:
 case 190:
 case 192:
  ret = mbxCommand;
  break;
 default:
  ret = MBX_SHUTDOWN;
  break;
 }
 return ret;
}
