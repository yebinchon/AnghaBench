
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct atmel_uart_port {int use_dma_rx; int use_pdc_rx; int use_dma_tx; int use_pdc_tx; } ;


 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static void atmel_init_property(struct atmel_uart_port *atmel_port,
    struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;


 if (of_property_read_bool(np, "atmel,use-dma-rx")) {
  if (of_property_read_bool(np, "dmas")) {
   atmel_port->use_dma_rx = 1;
   atmel_port->use_pdc_rx = 0;
  } else {
   atmel_port->use_dma_rx = 0;
   atmel_port->use_pdc_rx = 1;
  }
 } else {
  atmel_port->use_dma_rx = 0;
  atmel_port->use_pdc_rx = 0;
 }

 if (of_property_read_bool(np, "atmel,use-dma-tx")) {
  if (of_property_read_bool(np, "dmas")) {
   atmel_port->use_dma_tx = 1;
   atmel_port->use_pdc_tx = 0;
  } else {
   atmel_port->use_dma_tx = 0;
   atmel_port->use_pdc_tx = 1;
  }
 } else {
  atmel_port->use_dma_tx = 0;
  atmel_port->use_pdc_tx = 0;
 }
}
