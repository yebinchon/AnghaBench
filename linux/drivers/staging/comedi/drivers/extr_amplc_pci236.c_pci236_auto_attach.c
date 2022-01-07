
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int irq; } ;
struct pc236_private {void* lcr_iobase; } ;
struct comedi_device {int board_name; TYPE_1__* board_ptr; int class_dev; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int IRQF_SHARED ;
 int amplc_pc236_common_attach (struct comedi_device*,unsigned long,int ,int ) ;
 struct pc236_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int comedi_pci_enable (struct comedi_device*) ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int dev_info (int ,char*,int ) ;
 TYPE_1__ pc236_pci_board ;
 int pci_name (struct pci_dev*) ;
 void* pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int pci236_auto_attach(struct comedi_device *dev,
         unsigned long context_unused)
{
 struct pci_dev *pci_dev = comedi_to_pci_dev(dev);
 struct pc236_private *devpriv;
 unsigned long iobase;
 int ret;

 dev_info(dev->class_dev, "amplc_pci236: attach pci %s\n",
   pci_name(pci_dev));

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 dev->board_ptr = &pc236_pci_board;
 dev->board_name = pc236_pci_board.name;
 ret = comedi_pci_enable(dev);
 if (ret)
  return ret;

 devpriv->lcr_iobase = pci_resource_start(pci_dev, 1);
 iobase = pci_resource_start(pci_dev, 2);
 return amplc_pc236_common_attach(dev, iobase, pci_dev->irq,
      IRQF_SHARED);
}
