
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int subsystem_device; int subsystem_vendor; int device; int vendor; int dev; } ;


 int dev_err (int *,char*,int ,char const*,int ,int ,int ,int ) ;
 int pci_name (struct pci_dev*) ;

__attribute__((used)) static void moan_device(const char *str, struct pci_dev *dev)
{
 dev_err(&dev->dev,
        "%s: %s\n"
        "Please send the output of lspci -vv, this\n"
        "message (0x%04x,0x%04x,0x%04x,0x%04x), the\n"
        "manufacturer and name of serial board or\n"
        "modem board to <linux-serial@vger.kernel.org>.\n",
        pci_name(dev), str, dev->vendor, dev->device,
        dev->subsystem_vendor, dev->subsystem_device);
}
