
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;


 int OP_USBINTR ;
 int hw_read (struct ci_hdrc*,int ,int ) ;

u32 hw_read_intr_enable(struct ci_hdrc *ci)
{
 return hw_read(ci, OP_USBINTR, ~0);
}
