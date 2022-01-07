
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct isp1760_udc {int regs; } ;


 int isp1760_write32 (int ,int ,int ) ;

__attribute__((used)) static inline void isp1760_udc_write(struct isp1760_udc *udc, u16 reg, u32 val)
{
 isp1760_write32(udc->regs, reg, val);
}
