
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vendor_data {scalar_t__ access_32b; int (* get_fifosize ) (struct amba_device*) ;int reg_offset; } ;
struct TYPE_2__ {int * ops; int irq; int iotype; } ;
struct uart_amba_port {int type; TYPE_1__ port; int fifosize; struct vendor_data* vendor; int reg_offset; int clk; } ;
struct amba_id {struct vendor_data* data; } ;
struct amba_device {int res; int dev; int * irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int UPIO_MEM ;
 int UPIO_MEM32 ;
 int amba_pl011_pops ;
 int amba_rev (struct amba_device*) ;
 int amba_set_drvdata (struct amba_device*,struct uart_amba_port*) ;
 int devm_clk_get (int *,int *) ;
 struct uart_amba_port* devm_kzalloc (int *,int,int ) ;
 int pl011_find_free_port () ;
 int pl011_register_port (struct uart_amba_port*) ;
 int pl011_setup_port (int *,struct uart_amba_port*,int *,int) ;
 int snprintf (int ,int,char*,int) ;
 int stub1 (struct amba_device*) ;

__attribute__((used)) static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
{
 struct uart_amba_port *uap;
 struct vendor_data *vendor = id->data;
 int portnr, ret;

 portnr = pl011_find_free_port();
 if (portnr < 0)
  return portnr;

 uap = devm_kzalloc(&dev->dev, sizeof(struct uart_amba_port),
      GFP_KERNEL);
 if (!uap)
  return -ENOMEM;

 uap->clk = devm_clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(uap->clk))
  return PTR_ERR(uap->clk);

 uap->reg_offset = vendor->reg_offset;
 uap->vendor = vendor;
 uap->fifosize = vendor->get_fifosize(dev);
 uap->port.iotype = vendor->access_32b ? UPIO_MEM32 : UPIO_MEM;
 uap->port.irq = dev->irq[0];
 uap->port.ops = &amba_pl011_pops;

 snprintf(uap->type, sizeof(uap->type), "PL011 rev%u", amba_rev(dev));

 ret = pl011_setup_port(&dev->dev, uap, &dev->res, portnr);
 if (ret)
  return ret;

 amba_set_drvdata(dev, uap);

 return pl011_register_port(uap);
}
