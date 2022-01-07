
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int dummy; } ;


 int OP_USBCMD ;
 int USBCMD_SUTW ;
 int hw_test_and_write (struct ci_hdrc*,int ,int ,int ) ;

__attribute__((used)) static int hw_test_and_clear_setup_guard(struct ci_hdrc *ci)
{
 return hw_test_and_write(ci, OP_USBCMD, USBCMD_SUTW, 0);
}
