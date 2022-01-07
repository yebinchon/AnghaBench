
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_DIR_MSG ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int pr_warn (int ,unsigned char const) ;

__attribute__((used)) static int get_cmd_dir(const unsigned char *cdb)
{
 int ret;

 switch (cdb[0]) {
 case 152:
 case 155:
 case 154:
 case 153:
 case 164:
 case 159:
 case 158:
 case 140:
 case 163:
 case 157:
 case 143:
 case 168:
 case 146:
 case 151:
 case 148:
 case 150:
 case 147:
 case 149:
 case 145:
  ret = DMA_FROM_DEVICE;
  break;

 case 131:
 case 134:
 case 133:
 case 132:
 case 161:
 case 160:
 case 129:
 case 128:
 case 156:
 case 162:
 case 142:
 case 167:
  ret = DMA_TO_DEVICE;
  break;
 case 166:
 case 136:
 case 137:
 case 138:
 case 165:
 case 144:
 case 141:
 case 139:
 case 135:
 case 130:
  ret = DMA_NONE;
  break;
 default:

  pr_warn("target: Unknown data direction for SCSI Opcode 0x%02x\n", cdb[0]);

  ret = -EINVAL;
 }
 return ret;
}
