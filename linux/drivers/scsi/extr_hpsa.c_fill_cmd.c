
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ctlr_info {TYPE_4__* pdev; } ;
struct TYPE_7__ {int* CDB; int CDBLen; void* type_attr_dir; int Timeout; } ;
struct TYPE_5__ {int LunAddrBytes; } ;
struct TYPE_6__ {int SGList; TYPE_1__ LUN; void* SGTotal; scalar_t__ ReplyQueue; } ;
struct CommandList {TYPE_3__ Request; TYPE_2__ Header; int scsi_cmd; int cmd_type; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int dev; } ;


 int ATTR_SIMPLE ;
 int BMIC_CACHE_FLUSH ;


 void* BMIC_READ ;





 void* BMIC_WRITE ;
 int BUG () ;
 int CMD_IOCTL_PEND ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 int GET_DIR (void*) ;

 size_t HPSA_CISS_READ ;






 size_t HPSA_RESET ;
 int HPSA_RESET_TYPE_LUN ;
 size_t HPSA_TARGET_RESET_TYPE ;

 int SCSI_CMD_BUSY ;

 void* TYPE_ATTR_DIR (int,int ,int) ;
 int TYPE_CMD ;
 int TYPE_MSG ;
 int VPD_PAGE ;



 void* cpu_to_le16 (int) ;
 int dev_warn (int *,char*,int) ;
 scalar_t__ hpsa_map_one (TYPE_4__*,struct CommandList*,void*,size_t,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (size_t*,int ,int) ;

__attribute__((used)) static int fill_cmd(struct CommandList *c, u8 cmd, struct ctlr_info *h,
 void *buff, size_t size, u16 page_code, unsigned char *scsi3addr,
 int cmd_type)
{
 enum dma_data_direction dir = DMA_NONE;

 c->cmd_type = CMD_IOCTL_PEND;
 c->scsi_cmd = SCSI_CMD_BUSY;
 c->Header.ReplyQueue = 0;
 if (buff != ((void*)0) && size > 0) {
  c->Header.SGList = 1;
  c->Header.SGTotal = cpu_to_le16(1);
 } else {
  c->Header.SGList = 0;
  c->Header.SGTotal = cpu_to_le16(0);
 }
 memcpy(c->Header.LUN.LunAddrBytes, scsi3addr, 8);

 if (cmd_type == TYPE_CMD) {
  switch (cmd) {
  case 136:

   if (page_code & VPD_PAGE) {
    c->Request.CDB[1] = 0x01;
    c->Request.CDB[2] = (page_code & 0xff);
   }
   c->Request.CDBLen = 6;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = 136;
   c->Request.CDB[4] = size & 0xFF;
   break;
  case 132:
   c->Request.CDBLen = 6;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = cmd;
   c->Request.CDB[1] = 1;
   c->Request.CDB[2] = 1;
   c->Request.CDB[3] = (size >> 8) & 0xFF;
   c->Request.CDB[4] = size & 0xFF;
   break;
  case 134:
  case 133:



   c->Request.CDBLen = 12;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = cmd;
   c->Request.CDB[6] = (size >> 24) & 0xFF;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0xFF;
   c->Request.CDB[9] = size & 0xFF;
   break;
  case 143:
   c->Request.CDBLen = 16;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;

   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[6] = 143;
   break;
  case 140:
   c->Request.CDBLen = 16;
   c->Request.type_attr_dir =
     TYPE_ATTR_DIR(cmd_type,
      ATTR_SIMPLE, 128);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_WRITE;
   c->Request.CDB[6] = 140;
   break;
  case 139:
   c->Request.CDBLen = 12;
   c->Request.type_attr_dir =
     TYPE_ATTR_DIR(cmd_type,
      ATTR_SIMPLE, 128);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_WRITE;
   c->Request.CDB[6] = BMIC_CACHE_FLUSH;
   c->Request.CDB[7] = (size >> 8) & 0xFF;
   c->Request.CDB[8] = size & 0xFF;
   break;
  case 131:
   c->Request.CDBLen = 6;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 130);
   c->Request.Timeout = 0;
   break;
  case 137:
   c->Request.CDBLen = 12;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = HPSA_CISS_READ;
   c->Request.CDB[1] = cmd;
   c->Request.CDB[6] = (size >> 24) & 0xFF;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0xFF;
   c->Request.CDB[9] = size & 0xFF;
   break;
  case 144:
   c->Request.CDBLen = 10;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[6] = 144;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0xFF;
   break;
  case 145:
   c->Request.CDBLen = 10;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[6] = 145;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0XFF;
   break;
  case 141:
   c->Request.CDBLen = 10;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[6] = 141;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0XFF;
   break;
  case 142:
   c->Request.CDBLen = 10;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[6] = 142;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0XFF;
   break;
  case 146:
   c->Request.CDBLen = 10;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 129);
   c->Request.Timeout = 0;
   c->Request.CDB[0] = BMIC_READ;
   c->Request.CDB[1] = 0;
   c->Request.CDB[2] = 0;
   c->Request.CDB[3] = 0;
   c->Request.CDB[4] = 0;
   c->Request.CDB[5] = 0;
   c->Request.CDB[6] = 146;
   c->Request.CDB[7] = (size >> 16) & 0xFF;
   c->Request.CDB[8] = (size >> 8) & 0XFF;
   c->Request.CDB[9] = 0;
   break;
  default:
   dev_warn(&h->pdev->dev, "unknown command 0x%c\n", cmd);
   BUG();
  }
 } else if (cmd_type == TYPE_MSG) {
  switch (cmd) {

  case 135:
   c->Request.CDBLen = 16;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 130);
   c->Request.Timeout = 0;
   memset(&c->Request.CDB[0], 0, sizeof(c->Request.CDB));
   c->Request.CDB[0] = HPSA_RESET;
   c->Request.CDB[1] = HPSA_TARGET_RESET_TYPE;

   c->Request.CDB[4] = 0x00;
   c->Request.CDB[5] = 0x00;
   c->Request.CDB[6] = 0x00;
   c->Request.CDB[7] = 0x00;
   break;
  case 138:
   c->Request.CDBLen = 16;
   c->Request.type_attr_dir =
    TYPE_ATTR_DIR(cmd_type, ATTR_SIMPLE, 130);
   c->Request.Timeout = 0;
   memset(&c->Request.CDB[0], 0, sizeof(c->Request.CDB));
   c->Request.CDB[0] = cmd;
   c->Request.CDB[1] = HPSA_RESET_TYPE_LUN;


   c->Request.CDB[4] = 0x00;
   c->Request.CDB[5] = 0x00;
   c->Request.CDB[6] = 0x00;
   c->Request.CDB[7] = 0x00;
   break;
  default:
   dev_warn(&h->pdev->dev, "unknown message type %d\n",
    cmd);
   BUG();
  }
 } else {
  dev_warn(&h->pdev->dev, "unknown command type %d\n", cmd_type);
  BUG();
 }

 switch (GET_DIR(c->Request.type_attr_dir)) {
 case 129:
  dir = DMA_FROM_DEVICE;
  break;
 case 128:
  dir = DMA_TO_DEVICE;
  break;
 case 130:
  dir = DMA_NONE;
  break;
 default:
  dir = DMA_BIDIRECTIONAL;
 }
 if (hpsa_map_one(h->pdev, c, buff, size, dir))
  return -1;
 return 0;
}
