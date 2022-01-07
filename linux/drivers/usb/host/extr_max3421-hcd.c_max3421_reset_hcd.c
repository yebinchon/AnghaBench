
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct spi_device {int dev; } ;
struct max3421_hcd {int mode; int hien; int frame_number; } ;


 int BIT (int ) ;
 int MAX3421_CPUCTL_IE_BIT ;
 int MAX3421_HCTL_FRMRST_BIT ;
 int MAX3421_HCTL_SAMPLEBUS_BIT ;
 int MAX3421_HI_BUSEVENT_BIT ;
 int MAX3421_HI_CONDET_BIT ;
 int MAX3421_HI_FRAME_BIT ;
 int MAX3421_MODE_DMPULLDN_BIT ;
 int MAX3421_MODE_DPPULLDN_BIT ;
 int MAX3421_MODE_HOST_BIT ;
 int MAX3421_MODE_SOFKAENAB_BIT ;
 int MAX3421_REG_CPUCTL ;
 int MAX3421_REG_HCTL ;
 int MAX3421_REG_HIEN ;
 int MAX3421_REG_MODE ;
 int MAX3421_REG_USBCTL ;
 int MAX3421_REG_USBIRQ ;
 int MAX3421_USBCTL_CHIPRES_BIT ;
 int MAX3421_USBIRQ_OSCOKIRQ_BIT ;
 int USB_MAX_FRAME_NUMBER ;
 int cond_resched () ;
 int dev_err (int *,char*) ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int max3421_detect_conn (struct usb_hcd*) ;
 int spi_rd8 (struct usb_hcd*,int ) ;
 int spi_wr8 (struct usb_hcd*,int ,int) ;
 struct spi_device* to_spi_device (int ) ;

__attribute__((used)) static int
max3421_reset_hcd(struct usb_hcd *hcd)
{
 struct spi_device *spi = to_spi_device(hcd->self.controller);
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);
 int timeout;


 spi_wr8(hcd, MAX3421_REG_USBCTL, BIT(MAX3421_USBCTL_CHIPRES_BIT));

 spi_wr8(hcd, MAX3421_REG_USBCTL, 0);
 timeout = 1000;
 while (1) {
  if (spi_rd8(hcd, MAX3421_REG_USBIRQ)
      & BIT(MAX3421_USBIRQ_OSCOKIRQ_BIT))
   break;
  if (--timeout < 0) {
   dev_err(&spi->dev,
    "timed out waiting for oscillator OK signal");
   return 1;
  }
  cond_resched();
 }





 max3421_hcd->mode = (BIT(MAX3421_MODE_HOST_BIT) |
        BIT(MAX3421_MODE_SOFKAENAB_BIT) |
        BIT(MAX3421_MODE_DMPULLDN_BIT) |
        BIT(MAX3421_MODE_DPPULLDN_BIT));
 spi_wr8(hcd, MAX3421_REG_MODE, max3421_hcd->mode);


 max3421_hcd->frame_number = USB_MAX_FRAME_NUMBER;
 spi_wr8(hcd, MAX3421_REG_HCTL, BIT(MAX3421_HCTL_FRMRST_BIT));


 spi_wr8(hcd, MAX3421_REG_HCTL, BIT(MAX3421_HCTL_SAMPLEBUS_BIT));
 max3421_detect_conn(hcd);


 max3421_hcd->hien = (BIT(MAX3421_HI_FRAME_BIT) |
        BIT(MAX3421_HI_CONDET_BIT) |
        BIT(MAX3421_HI_BUSEVENT_BIT));
 spi_wr8(hcd, MAX3421_REG_HIEN, max3421_hcd->hien);


 spi_wr8(hcd, MAX3421_REG_CPUCTL, BIT(MAX3421_CPUCTL_IE_BIT));
 return 1;
}
