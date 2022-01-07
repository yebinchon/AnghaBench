
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int ETIMEDOUT ;
 int OP_USBCMD ;
 int USBCMD_RST ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hw_controller_reset(struct ci_hdrc *ci)
{
 int count = 0;

 hw_write(ci, OP_USBCMD, USBCMD_RST, USBCMD_RST);
 while (hw_read(ci, OP_USBCMD, USBCMD_RST)) {
  udelay(10);
  if (count++ > 1000)
   return -ETIMEDOUT;
 }

 return 0;
}
