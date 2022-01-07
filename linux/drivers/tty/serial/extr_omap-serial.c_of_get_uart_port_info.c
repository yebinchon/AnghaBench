
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_uart_port_info {int flags; int uartclk; } ;
struct device {int of_node; } ;


 int GFP_KERNEL ;
 int UPF_BOOT_AUTOCONF ;
 struct omap_uart_port_info* devm_kzalloc (struct device*,int,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;

__attribute__((used)) static struct omap_uart_port_info *of_get_uart_port_info(struct device *dev)
{
 struct omap_uart_port_info *omap_up_info;

 omap_up_info = devm_kzalloc(dev, sizeof(*omap_up_info), GFP_KERNEL);
 if (!omap_up_info)
  return ((void*)0);

 of_property_read_u32(dev->of_node, "clock-frequency",
      &omap_up_info->uartclk);

 omap_up_info->flags = UPF_BOOT_AUTOCONF;

 return omap_up_info;
}
