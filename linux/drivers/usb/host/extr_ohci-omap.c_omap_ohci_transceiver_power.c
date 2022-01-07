
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO1 ;
 int HIGH ;
 int INNOVATOR_FPGA_CAM_USB_CONTROL ;
 int LOW ;
 int __raw_readb (int ) ;
 int __raw_writeb (int,int ) ;
 scalar_t__ cpu_is_omap1510 () ;
 scalar_t__ machine_is_omap_innovator () ;
 scalar_t__ machine_is_omap_osk () ;
 int tps65010_set_gpio_out_value (int ,int ) ;

__attribute__((used)) static int omap_ohci_transceiver_power(int on)
{
 if (on) {
  if (machine_is_omap_innovator() && cpu_is_omap1510())
   __raw_writeb(__raw_readb(INNOVATOR_FPGA_CAM_USB_CONTROL)
    | ((1 << 5 ) | (1 << 3 )),
          INNOVATOR_FPGA_CAM_USB_CONTROL);
  else if (machine_is_omap_osk())
   tps65010_set_gpio_out_value(GPIO1, LOW);
 } else {
  if (machine_is_omap_innovator() && cpu_is_omap1510())
   __raw_writeb(__raw_readb(INNOVATOR_FPGA_CAM_USB_CONTROL)
    & ~((1 << 5 ) | (1 << 3 )),
          INNOVATOR_FPGA_CAM_USB_CONTROL);
  else if (machine_is_omap_osk())
   tps65010_set_gpio_out_value(GPIO1, HIGH);
 }

 return 0;
}
