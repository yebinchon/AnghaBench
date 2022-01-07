
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nidio96_private {TYPE_2__* mite; } ;
struct comedi_device {struct nidio96_private* private; } ;
struct TYPE_4__ {TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;





 int comedi_load_firmware (struct comedi_device*,int *,char const* const,int ,int) ;
 int pci_6534_init_main_fpga (struct comedi_device*) ;
 int pci_6534_load_fpga ;
 int pci_6534_reset_fpgas (struct comedi_device*) ;

__attribute__((used)) static int pci_6534_upload_firmware(struct comedi_device *dev)
{
 struct nidio96_private *devpriv = dev->private;
 static const char *const fw_file[3] = {
  129,
  128,
  130,
 };
 int ret;
 int n;

 ret = pci_6534_reset_fpgas(dev);
 if (ret < 0)
  return ret;

 for (n = 2; n >= 0; n--) {
  ret = comedi_load_firmware(dev, &devpriv->mite->pcidev->dev,
        fw_file[n],
        pci_6534_load_fpga, n);
  if (ret == 0 && n == 2)
   pci_6534_init_main_fpga(dev);
  if (ret < 0)
   break;
 }
 return ret;
}
