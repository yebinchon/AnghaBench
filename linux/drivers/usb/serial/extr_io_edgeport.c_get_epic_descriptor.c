
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_serial {TYPE_1__* interface; TYPE_2__* dev; } ;
struct edge_compatibility_bits {scalar_t__ TrueEdgeport; scalar_t__ IOSPSetBaudRate; scalar_t__ IOSPWriteLCR; scalar_t__ IOSPWriteMCR; scalar_t__ IOSPSetClrBreak; scalar_t__ IOSPRxCheck; scalar_t__ IOSPSetXChar; scalar_t__ IOSPSetTxFlow; scalar_t__ IOSPSetRxFlow; scalar_t__ IOSPChase; scalar_t__ IOSPClose; scalar_t__ IOSPOpen; scalar_t__ VendEnableSuspend; } ;
struct TYPE_7__ {struct edge_compatibility_bits Supports; } ;
struct edgeport_product_info {int ProductId; int Epic; int EpicVer; int iDownloadFile; int FirmwareBuildNumber; int FirmwareMinorVersion; int FirmwareMajorVersion; scalar_t__ ProdInfoVer; int NumPorts; } ;
struct edgeport_serial {int is_epic; TYPE_4__ epic_descriptor; struct edgeport_product_info product_info; struct usb_serial* serial; } ;
struct edge_compatibility_descriptor {int Supports; int EpicVer; int iDownloadFile; int BuildNumber; int MinorVersion; int MajorVersion; int NumPorts; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;
struct TYPE_5__ {int dev; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ION_DEVICE_ID_EDGEPORT_COMPATIBLE ;
 int USB_REQUEST_ION_GET_EPIC_DESC ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_warn (int *,char*,int) ;
 int dump_product_info (struct edgeport_serial*,struct edgeport_product_info*) ;
 int kfree (struct edge_compatibility_descriptor*) ;
 struct edge_compatibility_descriptor* kmalloc (int,int ) ;
 int memcpy (TYPE_4__*,struct edge_compatibility_descriptor*,int) ;
 int memset (struct edgeport_product_info*,int ,int) ;
 int usb_control_msg (TYPE_2__*,int ,int ,int,int,int,struct edge_compatibility_descriptor*,int,int) ;
 int usb_rcvctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int get_epic_descriptor(struct edgeport_serial *ep)
{
 int result;
 struct usb_serial *serial = ep->serial;
 struct edgeport_product_info *product_info = &ep->product_info;
 struct edge_compatibility_descriptor *epic;
 struct edge_compatibility_bits *bits;
 struct device *dev = &serial->dev->dev;

 ep->is_epic = 0;

 epic = kmalloc(sizeof(*epic), GFP_KERNEL);
 if (!epic)
  return -ENOMEM;

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
     USB_REQUEST_ION_GET_EPIC_DESC,
     0xC0, 0x00, 0x00,
     epic, sizeof(*epic),
     300);
 if (result == sizeof(*epic)) {
  ep->is_epic = 1;
  memcpy(&ep->epic_descriptor, epic, sizeof(*epic));
  memset(product_info, 0, sizeof(struct edgeport_product_info));

  product_info->NumPorts = epic->NumPorts;
  product_info->ProdInfoVer = 0;
  product_info->FirmwareMajorVersion = epic->MajorVersion;
  product_info->FirmwareMinorVersion = epic->MinorVersion;
  product_info->FirmwareBuildNumber = epic->BuildNumber;
  product_info->iDownloadFile = epic->iDownloadFile;
  product_info->EpicVer = epic->EpicVer;
  product_info->Epic = epic->Supports;
  product_info->ProductId = ION_DEVICE_ID_EDGEPORT_COMPATIBLE;
  dump_product_info(ep, product_info);

  bits = &ep->epic_descriptor.Supports;
  dev_dbg(dev, "**EPIC descriptor:\n");
  dev_dbg(dev, "  VendEnableSuspend: %s\n", bits->VendEnableSuspend ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPOpen         : %s\n", bits->IOSPOpen ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPClose        : %s\n", bits->IOSPClose ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPChase        : %s\n", bits->IOSPChase ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPSetRxFlow    : %s\n", bits->IOSPSetRxFlow ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPSetTxFlow    : %s\n", bits->IOSPSetTxFlow ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPSetXChar     : %s\n", bits->IOSPSetXChar ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPRxCheck      : %s\n", bits->IOSPRxCheck ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPSetClrBreak  : %s\n", bits->IOSPSetClrBreak ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPWriteMCR     : %s\n", bits->IOSPWriteMCR ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPWriteLCR     : %s\n", bits->IOSPWriteLCR ? "TRUE": "FALSE");
  dev_dbg(dev, "  IOSPSetBaudRate  : %s\n", bits->IOSPSetBaudRate ? "TRUE": "FALSE");
  dev_dbg(dev, "  TrueEdgeport     : %s\n", bits->TrueEdgeport ? "TRUE": "FALSE");

  result = 0;
 } else if (result >= 0) {
  dev_warn(&serial->interface->dev, "short epic descriptor received: %d\n",
    result);
  result = -EIO;
 }

 kfree(epic);

 return result;
}
