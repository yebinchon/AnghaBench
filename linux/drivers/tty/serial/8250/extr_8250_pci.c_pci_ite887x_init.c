
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct resource {int start; } ;
struct pci_dev {int dev; } ;


 int ENODEV ;
 scalar_t__ ITE_887x_INTCBAR ;
 int ITE_887x_IOSIZE ;
 scalar_t__ ITE_887x_MISCR ;
 scalar_t__ ITE_887x_POSIO0 ;
 short const ITE_887x_POSIO_ENABLE ;
 short const ITE_887x_POSIO_IOSIZE_32 ;
 short const ITE_887x_POSIO_IOSIZE_8 ;
 short const ITE_887x_POSIO_SPEED ;
 scalar_t__ ITE_887x_PS0BAR ;
 scalar_t__ ITE_887x_UARTBAR ;
 int dev_err (int *,char*) ;
 int inb (short const) ;
 int moan_device (char*,struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,short const) ;
 int release_region (int,int ) ;
 struct resource* request_region (short const,int ,char*) ;

__attribute__((used)) static int pci_ite887x_init(struct pci_dev *dev)
{

 static const short inta_addr[] = { 0x2a0, 0x2c0, 0x220, 0x240, 0x1e0,
       0x200, 0x280, 0 };
 int ret, i, type;
 struct resource *iobase = ((void*)0);
 u32 miscr, uartbar, ioport;


 i = 0;
 while (inta_addr[i] && iobase == ((void*)0)) {
  iobase = request_region(inta_addr[i], ITE_887x_IOSIZE,
        "ite887x");
  if (iobase != ((void*)0)) {

   pci_write_config_dword(dev, ITE_887x_POSIO0,
    ITE_887x_POSIO_ENABLE | ITE_887x_POSIO_SPEED |
    ITE_887x_POSIO_IOSIZE_32 | inta_addr[i]);

   pci_write_config_dword(dev, ITE_887x_INTCBAR,
        inta_addr[i]);
   ret = inb(inta_addr[i]);
   if (ret != 0xff) {

    break;
   }
   release_region(iobase->start, ITE_887x_IOSIZE);
   iobase = ((void*)0);
  }
  i++;
 }

 if (!inta_addr[i]) {
  dev_err(&dev->dev, "ite887x: could not find iobase\n");
  return -ENODEV;
 }


 type = inb(iobase->start + 0x18) & 0x0f;

 switch (type) {
 case 0x2:
 case 0xa:
  ret = 0;
  break;
 case 0xe:
  ret = 2;
  break;
 case 0x6:
  ret = 1;
  break;
 case 0x8:
  ret = 2;
  break;
 default:
  moan_device("Unknown ITE887x", dev);
  ret = -ENODEV;
 }


 for (i = 0; i < ret; i++) {

  pci_read_config_dword(dev, ITE_887x_PS0BAR + (0x4 * (i + 1)),
        &ioport);
  ioport &= 0x0000FF00;
  pci_write_config_dword(dev, ITE_887x_POSIO0 + (0x4 * (i + 1)),
   ITE_887x_POSIO_ENABLE | ITE_887x_POSIO_SPEED |
   ITE_887x_POSIO_IOSIZE_8 | ioport);


  pci_read_config_dword(dev, ITE_887x_UARTBAR, &uartbar);
  uartbar &= ~(0xffff << (16 * i));
  uartbar |= (ioport << (16 * i));
  pci_write_config_dword(dev, ITE_887x_UARTBAR, uartbar);


  pci_read_config_dword(dev, ITE_887x_MISCR, &miscr);

  miscr &= ~(0xf << (12 - 4 * i));

  miscr |= 1 << (23 - i);

  pci_write_config_dword(dev, ITE_887x_MISCR, miscr);
 }

 if (ret <= 0) {

  release_region(iobase->start, ITE_887x_IOSIZE);
 }

 return ret;
}
