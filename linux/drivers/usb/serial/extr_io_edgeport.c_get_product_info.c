
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int DescDate; int BoardRev; int CpuRev; int RamSize; int RomSize; int NumPorts; } ;
struct TYPE_6__ {int BuildNumber; int MinorVersion; int MajorVersion; } ;
struct edgeport_product_info {int IsRS232; int IsRS422; int IsRS485; scalar_t__ ProductId; int iDownloadFile; int ManufactureDescDate; int BootBuildNumber; int BootMinorVersion; int BootMajorVersion; int BoardRev; int CpuRev; int RamSize; int RomSize; scalar_t__ ProdInfoVer; int NumPorts; } ;
struct edgeport_serial {TYPE_5__* serial; TYPE_2__ manuf_descriptor; TYPE_1__ boot_descriptor; struct edgeport_product_info product_info; } ;
typedef scalar_t__ __u16 ;
struct TYPE_10__ {TYPE_4__* dev; } ;
struct TYPE_8__ {int idProduct; } ;
struct TYPE_9__ {TYPE_3__ descriptor; } ;


 int DEVICE_ID_FROM_USB_PRODUCT_ID (scalar_t__) ;
 int EDGE_DOWNLOAD_FILE_80251 ;
 int EDGE_DOWNLOAD_FILE_I930 ;
 int ION_DEVICE_ID_80251_NETCHIP ;
 int dump_product_info (struct edgeport_serial*,struct edgeport_product_info*) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int memset (struct edgeport_product_info*,int ,int) ;

__attribute__((used)) static void get_product_info(struct edgeport_serial *edge_serial)
{
 struct edgeport_product_info *product_info = &edge_serial->product_info;

 memset(product_info, 0, sizeof(struct edgeport_product_info));

 product_info->ProductId = (__u16)(le16_to_cpu(edge_serial->serial->dev->descriptor.idProduct) & ~ION_DEVICE_ID_80251_NETCHIP);
 product_info->NumPorts = edge_serial->manuf_descriptor.NumPorts;
 product_info->ProdInfoVer = 0;

 product_info->RomSize = edge_serial->manuf_descriptor.RomSize;
 product_info->RamSize = edge_serial->manuf_descriptor.RamSize;
 product_info->CpuRev = edge_serial->manuf_descriptor.CpuRev;
 product_info->BoardRev = edge_serial->manuf_descriptor.BoardRev;

 product_info->BootMajorVersion =
    edge_serial->boot_descriptor.MajorVersion;
 product_info->BootMinorVersion =
    edge_serial->boot_descriptor.MinorVersion;
 product_info->BootBuildNumber =
    edge_serial->boot_descriptor.BuildNumber;

 memcpy(product_info->ManufactureDescDate,
   edge_serial->manuf_descriptor.DescDate,
   sizeof(edge_serial->manuf_descriptor.DescDate));


 if (le16_to_cpu(edge_serial->serial->dev->descriptor.idProduct)
         & ION_DEVICE_ID_80251_NETCHIP)
  product_info->iDownloadFile = EDGE_DOWNLOAD_FILE_80251;
 else
  product_info->iDownloadFile = EDGE_DOWNLOAD_FILE_I930;


 switch (DEVICE_ID_FROM_USB_PRODUCT_ID(product_info->ProductId)) {
 case 128:
 case 133:
 case 136:
 case 140:
 case 129:
 case 131:
 case 135:
 case 139:
 case 137:
 case 132:
 case 141:
  product_info->IsRS232 = 1;
  break;

 case 138:
  product_info->IsRS422 = 1;
  product_info->IsRS485 = 1;
  break;

 case 130:
 case 134:
  product_info->IsRS422 = 1;
  break;
 }

 dump_product_info(edge_serial, product_info);
}
