
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int UConfig1; int UConfig0; int Capabilities; int BuildNumber; int MinorVersion; int MajorVersion; int BootCodeLength; } ;
struct edgeport_serial {TYPE_2__ boot_descriptor; TYPE_3__* serial; } ;
struct device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct device dev; } ;


 int EDGE_BOOT_DESC_ADDR ;
 int EDGE_BOOT_DESC_LEN ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 int le16_to_cpu (int ) ;
 int rom_read (TYPE_3__*,int,int ,int ,int *) ;

__attribute__((used)) static void get_boot_desc(struct edgeport_serial *edge_serial)
{
 struct device *dev = &edge_serial->serial->dev->dev;
 int response;

 dev_dbg(dev, "getting boot descriptor\n");

 response = rom_read(edge_serial->serial,
    (EDGE_BOOT_DESC_ADDR & 0xffff0000) >> 16,
    (__u16)(EDGE_BOOT_DESC_ADDR & 0x0000ffff),
    EDGE_BOOT_DESC_LEN,
    (__u8 *)(&edge_serial->boot_descriptor));

 if (response < 0) {
  dev_err(dev, "error in getting boot descriptor: %d\n",
    response);
 } else {
  dev_dbg(dev, "**Boot Descriptor:\n");
  dev_dbg(dev, "  BootCodeLength: %d\n",
   le16_to_cpu(edge_serial->boot_descriptor.BootCodeLength));
  dev_dbg(dev, "  MajorVersion:   %d\n",
   edge_serial->boot_descriptor.MajorVersion);
  dev_dbg(dev, "  MinorVersion:   %d\n",
   edge_serial->boot_descriptor.MinorVersion);
  dev_dbg(dev, "  BuildNumber:    %d\n",
   le16_to_cpu(edge_serial->boot_descriptor.BuildNumber));
  dev_dbg(dev, "  Capabilities:   0x%x\n",
        le16_to_cpu(edge_serial->boot_descriptor.Capabilities));
  dev_dbg(dev, "  UConfig0:       %d\n",
   edge_serial->boot_descriptor.UConfig0);
  dev_dbg(dev, "  UConfig1:       %d\n",
   edge_serial->boot_descriptor.UConfig1);
 }
}
