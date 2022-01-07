
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int OP_USBSTS ;
 int hw_read_intr_enable (struct ci_hdrc*) ;
 int hw_read_intr_status (struct ci_hdrc*) ;
 int hw_write (struct ci_hdrc*,int ,int ,int) ;

__attribute__((used)) static u32 hw_test_and_clear_intr_active(struct ci_hdrc *ci)
{
 u32 reg = hw_read_intr_status(ci) & hw_read_intr_enable(ci);

 hw_write(ci, OP_USBSTS, ~0, reg);
 return reg;
}
