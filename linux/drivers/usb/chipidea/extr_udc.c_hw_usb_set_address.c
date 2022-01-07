
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ci_hdrc {int dummy; } ;


 int DEVICEADDR_USBADR ;
 int OP_DEVICEADDR ;
 int __ffs (int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,int) ;

__attribute__((used)) static void hw_usb_set_address(struct ci_hdrc *ci, u8 value)
{
 hw_write(ci, OP_DEVICEADDR, DEVICEADDR_USBADR,
   value << __ffs(DEVICEADDR_USBADR));
}
