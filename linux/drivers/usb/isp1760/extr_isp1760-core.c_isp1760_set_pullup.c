
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_device {int regs; } ;


 int HW_DP_PULLUP ;
 int HW_OTG_CTRL_SET ;
 int isp1760_write32 (int ,int ,int) ;

void isp1760_set_pullup(struct isp1760_device *isp, bool enable)
{
 isp1760_write32(isp->regs, HW_OTG_CTRL_SET,
   enable ? HW_DP_PULLUP : HW_DP_PULLUP << 16);
}
