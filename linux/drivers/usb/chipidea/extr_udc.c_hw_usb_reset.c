
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int OP_ENDPTCOMPLETE ;
 int OP_ENDPTFLUSH ;
 int OP_ENDPTPRIME ;
 int OP_ENDPTSETUPSTAT ;
 scalar_t__ hw_read (struct ci_hdrc*,int ,int ) ;
 int hw_usb_set_address (struct ci_hdrc*,int ) ;
 int hw_write (struct ci_hdrc*,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int hw_usb_reset(struct ci_hdrc *ci)
{
 hw_usb_set_address(ci, 0);


 hw_write(ci, OP_ENDPTFLUSH, ~0, ~0);


 hw_write(ci, OP_ENDPTSETUPSTAT, 0, 0);


 hw_write(ci, OP_ENDPTCOMPLETE, 0, 0);


 while (hw_read(ci, OP_ENDPTPRIME, ~0))
  udelay(10);






 return 0;
}
