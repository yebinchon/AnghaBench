
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct uart_8250_port {int port; } ;
struct serial_private {int * line; } ;
struct pci_dev {int device; int irq; } ;
typedef int resource_size_t ;


 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_IO ;
 int pci_fintek_rs485_config (int *,int *) ;
 struct serial_private* pci_get_drvdata (struct pci_dev*) ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct uart_8250_port* serial8250_get_port (int ) ;

__attribute__((used)) static int pci_fintek_init(struct pci_dev *dev)
{
 unsigned long iobase;
 u32 max_port, i;
 resource_size_t bar_data[3];
 u8 config_base;
 struct serial_private *priv = pci_get_drvdata(dev);
 struct uart_8250_port *port;

 if (!(pci_resource_flags(dev, 5) & IORESOURCE_IO) ||
   !(pci_resource_flags(dev, 4) & IORESOURCE_IO) ||
   !(pci_resource_flags(dev, 3) & IORESOURCE_IO))
  return -ENODEV;

 switch (dev->device) {
 case 0x1104:
 case 0x1108:
  max_port = dev->device & 0xff;
  break;
 case 0x1112:
  max_port = 12;
  break;
 default:
  return -EINVAL;
 }


 bar_data[0] = pci_resource_start(dev, 5);
 bar_data[1] = pci_resource_start(dev, 4);
 bar_data[2] = pci_resource_start(dev, 3);

 for (i = 0; i < max_port; ++i) {

  config_base = 0x40 + 0x08 * i;


  iobase = (bar_data[i / 4] & 0xffffffe0) + (i % 4) * 8;


  pci_write_config_byte(dev, config_base + 0x00, 0x01);


  pci_write_config_byte(dev, config_base + 0x01, 0x33);


  pci_write_config_byte(dev, config_base + 0x04,
    (u8)(iobase & 0xff));


  pci_write_config_byte(dev, config_base + 0x05,
    (u8)((iobase & 0xff00) >> 8));

  pci_write_config_byte(dev, config_base + 0x06, dev->irq);

  if (priv) {



   port = serial8250_get_port(priv->line[i]);
   pci_fintek_rs485_config(&port->port, ((void*)0));
  } else {



   pci_write_config_byte(dev, config_base + 0x07, 0x01);
  }
 }

 return max_port;
}
