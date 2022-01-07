
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int OP_ENDPTLISTADDR ;
 int OP_USBINTR ;
 int USBi_PCI ;
 int USBi_SLI ;
 int USBi_UEI ;
 int USBi_UI ;
 int USBi_URI ;
 int hw_write (struct ci_hdrc*,int ,int ,int) ;

__attribute__((used)) static int hw_device_state(struct ci_hdrc *ci, u32 dma)
{
 if (dma) {
  hw_write(ci, OP_ENDPTLISTADDR, ~0, dma);

  hw_write(ci, OP_USBINTR, ~0,
        USBi_UI|USBi_UEI|USBi_PCI|USBi_URI|USBi_SLI);
 } else {
  hw_write(ci, OP_USBINTR, ~0, 0);
 }
 return 0;
}
