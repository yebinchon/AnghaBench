
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;


 int ENODEV ;
 int ULPI_SCRATCH ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int usb_phy_io_read (struct usb_phy*,int ) ;
 int usb_phy_io_write (struct usb_phy*,unsigned int,int ) ;

__attribute__((used)) static int ulpi_check_integrity(struct usb_phy *phy)
{
 int ret, i;
 unsigned int val = 0x55;

 for (i = 0; i < 2; i++) {
  ret = usb_phy_io_write(phy, val, ULPI_SCRATCH);
  if (ret < 0)
   return ret;

  ret = usb_phy_io_read(phy, ULPI_SCRATCH);
  if (ret < 0)
   return ret;

  if (ret != val) {
   pr_err("ULPI integrity check: failed!");
   return -ENODEV;
  }
  val = val << 1;
 }

 pr_info("ULPI integrity check: passed.\n");

 return 0;
}
