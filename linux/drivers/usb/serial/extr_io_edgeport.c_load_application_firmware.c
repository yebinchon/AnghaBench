
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ihex_binrec {int* data; int len; int addr; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_5__ {int iDownloadFile; int FirmwareMajorVersion; int FirmwareMinorVersion; int FirmwareBuildNumber; } ;
struct edgeport_serial {TYPE_4__* serial; TYPE_1__ product_info; } ;
struct device {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_6__ {struct device dev; } ;





 int USB_REQUEST_ION_EXEC_DL_CODE ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int cpu_to_le16 (int) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 struct ihex_binrec* ihex_next_binrec (struct ihex_binrec const*) ;
 int release_firmware (struct firmware const*) ;
 int request_ihex_firmware (struct firmware const**,char const*,struct device*) ;
 int sram_write (TYPE_4__*,int,int,int ,int*) ;
 int usb_control_msg (TYPE_2__*,int ,int ,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static void load_application_firmware(struct edgeport_serial *edge_serial)
{
 struct device *dev = &edge_serial->serial->dev->dev;
 const struct ihex_binrec *rec;
 const struct firmware *fw;
 const char *fw_name;
 const char *fw_info;
 int response;
 __u32 Operaddr;
 __u16 build;

 switch (edge_serial->product_info.iDownloadFile) {
  case 129:
   fw_info = "downloading firmware version (930)";
   fw_name = "edgeport/down.fw";
   break;

  case 130:
   fw_info = "downloading firmware version (80251)";
   fw_name = "edgeport/down2.fw";
   break;

  case 128:
   dev_dbg(dev, "No download file specified, skipping download\n");
   return;

  default:
   return;
 }

 response = request_ihex_firmware(&fw, fw_name,
        &edge_serial->serial->dev->dev);
 if (response) {
  dev_err(dev, "Failed to load image \"%s\" err %d\n",
         fw_name, response);
  return;
 }

 rec = (const struct ihex_binrec *)fw->data;
 build = (rec->data[2] << 8) | rec->data[3];

 dev_dbg(dev, "%s %d.%d.%d\n", fw_info, rec->data[0], rec->data[1], build);

 edge_serial->product_info.FirmwareMajorVersion = rec->data[0];
 edge_serial->product_info.FirmwareMinorVersion = rec->data[1];
 edge_serial->product_info.FirmwareBuildNumber = cpu_to_le16(build);

 for (rec = ihex_next_binrec(rec); rec;
      rec = ihex_next_binrec(rec)) {
  Operaddr = be32_to_cpu(rec->addr);
  response = sram_write(edge_serial->serial,
         Operaddr >> 16,
         Operaddr & 0xFFFF,
         be16_to_cpu(rec->len),
         &rec->data[0]);
  if (response < 0) {
   dev_err(&edge_serial->serial->dev->dev,
    "sram_write failed (%x, %x, %d)\n",
    Operaddr >> 16, Operaddr & 0xFFFF,
    be16_to_cpu(rec->len));
   break;
  }
 }

 dev_dbg(dev, "sending exec_dl_code\n");
 response = usb_control_msg (edge_serial->serial->dev,
        usb_sndctrlpipe(edge_serial->serial->dev, 0),
        USB_REQUEST_ION_EXEC_DL_CODE,
        0x40, 0x4000, 0x0001, ((void*)0), 0, 3000);

 release_firmware(fw);
}
