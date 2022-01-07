
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3_pci {int dev; scalar_t__ base; int map; } ;


 int ENODEV ;
 unsigned int INTEGRATOR_SC_PCI_ENABLE ;
 unsigned int INTEGRATOR_SC_PCI_INTCLR ;
 int INTEGRATOR_SC_PCI_OFFSET ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ V3_LB_IO_BASE ;
 scalar_t__ V3_MAIL_DATA ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int msleep (int) ;
 int readb (scalar_t__) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int syscon_regmap_lookup_by_compatible (char*) ;
 int writeb (int,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int v3_integrator_init(struct v3_pci *v3)
{
 unsigned int val;

 v3->map =
  syscon_regmap_lookup_by_compatible("arm,integrator-ap-syscon");
 if (IS_ERR(v3->map)) {
  dev_err(v3->dev, "no syscon\n");
  return -ENODEV;
 }

 regmap_read(v3->map, INTEGRATOR_SC_PCI_OFFSET, &val);

 regmap_write(v3->map, INTEGRATOR_SC_PCI_OFFSET,
       INTEGRATOR_SC_PCI_ENABLE |
       INTEGRATOR_SC_PCI_INTCLR);

 if (!(val & INTEGRATOR_SC_PCI_ENABLE)) {

  msleep(230);


  writel(0x6200, v3->base + V3_LB_IO_BASE);


  do {
   writeb(0xaa, v3->base + V3_MAIL_DATA);
   writeb(0x55, v3->base + V3_MAIL_DATA + 4);
  } while (readb(v3->base + V3_MAIL_DATA) != 0xaa &&
    readb(v3->base + V3_MAIL_DATA) != 0x55);
 }

 dev_info(v3->dev, "initialized PCI V3 Integrator/AP integration\n");

 return 0;
}
