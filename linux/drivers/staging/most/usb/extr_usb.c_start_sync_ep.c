
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_device {int dummy; } ;


 scalar_t__ DRCI_COMMAND ;
 scalar_t__ DRCI_REG_BASE ;
 int drci_wr_reg (struct usb_device*,scalar_t__,int) ;

__attribute__((used)) static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
{
 return drci_wr_reg(usb_dev, DRCI_REG_BASE + DRCI_COMMAND + ep * 16, 1);
}
