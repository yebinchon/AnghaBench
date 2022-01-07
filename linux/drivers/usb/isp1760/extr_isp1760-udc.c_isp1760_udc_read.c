
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct isp1760_udc {int regs; } ;


 int isp1760_read32 (int ,int ) ;

__attribute__((used)) static inline u32 isp1760_udc_read(struct isp1760_udc *udc, u16 reg)
{
 return isp1760_read32(udc->regs, reg);
}
