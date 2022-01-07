
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_MEDIUM ;
 int BLK_STS_NEXUS ;
 int BLK_STS_NOSPC ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;
 int BLK_STS_PROTECTION ;
 int BLK_STS_TARGET ;
 int BLK_STS_TRANSPORT ;
__attribute__((used)) static blk_status_t nvme_error_status(u16 status)
{
 switch (status & 0x7ff) {
 case 130:
  return BLK_STS_OK;
 case 144:
  return BLK_STS_NOSPC;
 case 136:
  return BLK_STS_TARGET;
 case 145:
 case 135:
 case 138:
 case 140:
 case 139:
  return BLK_STS_NOTSUPP;
 case 128:
 case 134:
 case 129:
 case 147:
 case 133:
 case 143:
  return BLK_STS_MEDIUM;
 case 142:
 case 146:
 case 132:
 case 137:
  return BLK_STS_PROTECTION;
 case 131:
  return BLK_STS_NEXUS;
 case 141:
  return BLK_STS_TRANSPORT;
 default:
  return BLK_STS_IOERR;
 }
}
