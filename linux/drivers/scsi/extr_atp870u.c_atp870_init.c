
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; int revision; int dev; } ;
struct atp_unit {unsigned char* host_id; int* global_map; int* ultra_map; scalar_t__* pciport; int * ioport; struct pci_dev* pdev; } ;
struct Scsi_Host {int max_id; unsigned char this_id; int io_port; int irq; } ;


 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7610 ;
 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7612SUW ;
 scalar_t__ PCI_DEVICE_ID_ARTOP_AEC7612UW ;
 int atp_is (struct atp_unit*,int ,int,int ) ;
 int atp_readb_base (struct atp_unit*,int) ;
 int atp_readb_pci (struct atp_unit*,int ,int) ;
 int atp_readw_base (struct atp_unit*,int) ;
 int atp_set_host_id (struct atp_unit*,int ,unsigned char) ;
 int atp_writeb_base (struct atp_unit*,int,int) ;
 int dev_info (int *,char*,int ,int ) ;
 int msleep (int) ;
 int pci_read_config_byte (struct pci_dev*,int,unsigned char*) ;
 struct atp_unit* shost_priv (struct Scsi_Host*) ;
 int tscam (struct Scsi_Host*,int,int) ;

__attribute__((used)) static void atp870_init(struct Scsi_Host *shpnt)
{
 struct atp_unit *atpdev = shost_priv(shpnt);
 struct pci_dev *pdev = atpdev->pdev;
 unsigned char k, host_id;
 u8 scam_on;
 bool wide_chip =
  (pdev->device == PCI_DEVICE_ID_ARTOP_AEC7610 &&
   pdev->revision == 4) ||
  (pdev->device == PCI_DEVICE_ID_ARTOP_AEC7612UW) ||
  (pdev->device == PCI_DEVICE_ID_ARTOP_AEC7612SUW);

 pci_read_config_byte(pdev, 0x49, &host_id);

 dev_info(&pdev->dev, "ACARD AEC-671X PCI Ultra/W SCSI-2/3 Host Adapter: IO:%lx, IRQ:%d.\n",
   shpnt->io_port, shpnt->irq);

 atpdev->ioport[0] = shpnt->io_port;
 atpdev->pciport[0] = shpnt->io_port + 0x20;
 host_id &= 0x07;
 atpdev->host_id[0] = host_id;
 scam_on = atp_readb_pci(atpdev, 0, 2);
 atpdev->global_map[0] = atp_readb_base(atpdev, 0x2d);
 atpdev->ultra_map[0] = atp_readw_base(atpdev, 0x2e);

 if (atpdev->ultra_map[0] == 0) {
  scam_on = 0x00;
  atpdev->global_map[0] = 0x20;
  atpdev->ultra_map[0] = 0xffff;
 }

 if (pdev->revision > 0x07)
  atp_writeb_base(atpdev, 0x3e, 0x00);

 k = (atp_readb_base(atpdev, 0x3a) & 0xf3) | 0x10;
 atp_writeb_base(atpdev, 0x3a, k);
 atp_writeb_base(atpdev, 0x3a, k & 0xdf);
 msleep(32);
 atp_writeb_base(atpdev, 0x3a, k);
 msleep(32);
 atp_set_host_id(atpdev, 0, host_id);

 tscam(shpnt, wide_chip, scam_on);
 atp_writeb_base(atpdev, 0x3a, atp_readb_base(atpdev, 0x3a) | 0x10);
 atp_is(atpdev, 0, wide_chip, 0);
 atp_writeb_base(atpdev, 0x3a, atp_readb_base(atpdev, 0x3a) & 0xef);
 atp_writeb_base(atpdev, 0x3b, atp_readb_base(atpdev, 0x3b) | 0x20);
 shpnt->max_id = wide_chip ? 16 : 8;
 shpnt->this_id = host_id;
}
