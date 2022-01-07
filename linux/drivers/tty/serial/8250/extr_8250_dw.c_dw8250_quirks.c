
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int line; int flags; int regshift; TYPE_3__* dev; int serial_in; int iotype; int serial_out; int type; } ;
struct TYPE_4__ {int fn; int tx_param; int rx_param; } ;
struct TYPE_5__ {TYPE_1__ dma; } ;
struct dw8250_data {int usr_reg; int skip_autocfg; int uart_16550_compatible; TYPE_2__ data; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int parent; struct device_node* of_node; } ;


 int IORESOURCE_MEM ;
 int PORT_OCTEON ;
 int UPF_FIXED_TYPE ;
 int UPF_SHARE_IRQ ;
 int UPF_SKIP_TEST ;
 int UPIO_MEM32 ;
 int UPIO_MEM32BE ;
 scalar_t__ acpi_dev_present (char*,int *,int) ;
 int dw8250_idma_filter ;
 int dw8250_serial_in32 ;
 int dw8250_serial_in32be ;
 int dw8250_serial_inq ;
 int dw8250_serial_out32be ;
 int dw8250_serial_out38x ;
 int dw8250_serial_outq ;
 int of_alias_get_id (struct device_node*,char*) ;
 scalar_t__ of_device_is_big_endian (struct device_node*) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 scalar_t__ platform_get_resource_byname (int ,int ,char*) ;
 int to_platform_device (TYPE_3__*) ;

__attribute__((used)) static void dw8250_quirks(struct uart_port *p, struct dw8250_data *data)
{
 if (p->dev->of_node) {
  struct device_node *np = p->dev->of_node;
  int id;


  id = of_alias_get_id(np, "serial");
  if (id >= 0)
   p->line = id;
  if (of_device_is_big_endian(p->dev->of_node)) {
   p->iotype = UPIO_MEM32BE;
   p->serial_in = dw8250_serial_in32be;
   p->serial_out = dw8250_serial_out32be;
  }
  if (of_device_is_compatible(np, "marvell,armada-38x-uart"))
   p->serial_out = dw8250_serial_out38x;

 } else if (acpi_dev_present("APMC0D08", ((void*)0), -1)) {
  p->iotype = UPIO_MEM32;
  p->regshift = 2;
  p->serial_in = dw8250_serial_in32;
  data->uart_16550_compatible = 1;
 }


 if (platform_get_resource_byname(to_platform_device(p->dev),
      IORESOURCE_MEM, "lpss_priv")) {
  data->data.dma.rx_param = p->dev->parent;
  data->data.dma.tx_param = p->dev->parent;
  data->data.dma.fn = dw8250_idma_filter;
 }
}
