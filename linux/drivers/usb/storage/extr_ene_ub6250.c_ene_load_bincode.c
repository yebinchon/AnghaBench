
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {int * srb; TYPE_1__* pusb_dev; scalar_t__ extra; scalar_t__ iobuf; } ;
struct firmware {int size; int data; } ;
struct ene_ub6250_info {unsigned char BIN_FLAG; } ;
struct bulk_cb_wrap {int Flags; int* CDB; int DataTransferLength; int Signature; } ;
struct TYPE_2__ {int dev; } ;


 int FDIR_WRITE ;
 int GFP_KERNEL ;
 char* MSP_RW_FIRMWARE ;

 char* MS_INIT_FIRMWARE ;

 char* MS_RW_FIRMWARE ;

 char* SD_INIT1_FIRMWARE ;

 char* SD_INIT2_FIRMWARE ;

 char* SD_RW_FIRMWARE ;

 int USB_STOR_TRANSPORT_ERROR ;
 int USB_STOR_TRANSPORT_GOOD ;
 int US_BULK_CB_SIGN ;
 int cpu_to_le32 (int ) ;
 int ene_send_scsi_cmd (struct us_data*,int ,unsigned char*,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kmemdup (int ,int ,int ) ;
 int memset (struct bulk_cb_wrap*,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int scsi_set_resid (int *,int ) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int ene_load_bincode(struct us_data *us, unsigned char flag)
{
 int err;
 char *fw_name = ((void*)0);
 unsigned char *buf = ((void*)0);
 const struct firmware *sd_fw = ((void*)0);
 int result = USB_STOR_TRANSPORT_ERROR;
 struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
 struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

 if (info->BIN_FLAG == flag)
  return USB_STOR_TRANSPORT_GOOD;

 switch (flag) {

 case 130:
  usb_stor_dbg(us, "SD_INIT1_PATTERN\n");
  fw_name = SD_INIT1_FIRMWARE;
  break;
 case 129:
  usb_stor_dbg(us, "SD_INIT2_PATTERN\n");
  fw_name = SD_INIT2_FIRMWARE;
  break;
 case 128:
  usb_stor_dbg(us, "SD_RW_PATTERN\n");
  fw_name = SD_RW_FIRMWARE;
  break;

 case 132:
  usb_stor_dbg(us, "MS_INIT_PATTERN\n");
  fw_name = MS_INIT_FIRMWARE;
  break;
 case 133:
  usb_stor_dbg(us, "MSP_RW_PATTERN\n");
  fw_name = MSP_RW_FIRMWARE;
  break;
 case 131:
  usb_stor_dbg(us, "MS_RW_PATTERN\n");
  fw_name = MS_RW_FIRMWARE;
  break;
 default:
  usb_stor_dbg(us, "----------- Unknown PATTERN ----------\n");
  goto nofw;
 }

 err = request_firmware(&sd_fw, fw_name, &us->pusb_dev->dev);
 if (err) {
  usb_stor_dbg(us, "load firmware %s failed\n", fw_name);
  goto nofw;
 }
 buf = kmemdup(sd_fw->data, sd_fw->size, GFP_KERNEL);
 if (buf == ((void*)0))
  goto nofw;

 memset(bcb, 0, sizeof(struct bulk_cb_wrap));
 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->DataTransferLength = sd_fw->size;
 bcb->Flags = 0x00;
 bcb->CDB[0] = 0xEF;

 result = ene_send_scsi_cmd(us, FDIR_WRITE, buf, 0);
 if (us->srb != ((void*)0))
  scsi_set_resid(us->srb, 0);
 info->BIN_FLAG = flag;
 kfree(buf);

nofw:
 release_firmware(sd_fw);
 return result;
}
