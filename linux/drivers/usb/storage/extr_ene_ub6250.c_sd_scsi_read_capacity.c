
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct us_data {scalar_t__ extra; } ;
struct scsi_cmnd {int dummy; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {scalar_t__ IsMMC; scalar_t__ HiCapacity; } ;
struct ene_ub6250_info {int HC_C_SIZE; int SD_READ_BL_LEN; int SD_Block_Mult; int SD_C_SIZE; int SD_C_SIZE_MULT; int bl_num; TYPE_1__ SD_Status; } ;


 int TO_XFER_BUF ;
 int USB_STOR_TRANSPORT_GOOD ;
 int usb_stor_access_xfer_buf (unsigned char*,int,struct scsi_cmnd*,struct scatterlist**,unsigned int*,int ) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int sd_scsi_read_capacity(struct us_data *us, struct scsi_cmnd *srb)
{
 u32 bl_num;
 u32 bl_len;
 unsigned int offset = 0;
 unsigned char buf[8];
 struct scatterlist *sg = ((void*)0);
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 usb_stor_dbg(us, "sd_scsi_read_capacity\n");
 if (info->SD_Status.HiCapacity) {
  bl_len = 0x200;
  if (info->SD_Status.IsMMC)
   bl_num = info->HC_C_SIZE-1;
  else
   bl_num = (info->HC_C_SIZE + 1) * 1024 - 1;
 } else {
  bl_len = 1 << (info->SD_READ_BL_LEN);
  bl_num = info->SD_Block_Mult * (info->SD_C_SIZE + 1)
    * (1 << (info->SD_C_SIZE_MULT + 2)) - 1;
 }
 info->bl_num = bl_num;
 usb_stor_dbg(us, "bl_len = %x\n", bl_len);
 usb_stor_dbg(us, "bl_num = %x\n", bl_num);


 buf[0] = (bl_num >> 24) & 0xff;
 buf[1] = (bl_num >> 16) & 0xff;
 buf[2] = (bl_num >> 8) & 0xff;
 buf[3] = (bl_num >> 0) & 0xff;
 buf[4] = (bl_len >> 24) & 0xff;
 buf[5] = (bl_len >> 16) & 0xff;
 buf[6] = (bl_len >> 8) & 0xff;
 buf[7] = (bl_len >> 0) & 0xff;

 usb_stor_access_xfer_buf(buf, 8, srb, &sg, &offset, TO_XFER_BUF);

 return USB_STOR_TRANSPORT_GOOD;
}
