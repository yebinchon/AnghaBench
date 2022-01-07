
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fusb300 {scalar_t__ reg; } ;


 int FUSB300_CSR_LEN (int ) ;
 int FUSB300_CSR_LEN_MSK ;
 scalar_t__ FUSB300_OFFSET_CSR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fusb300_set_cxlen(struct fusb300 *fusb300, u32 length)
{
 u32 reg;

 reg = ioread32(fusb300->reg + FUSB300_OFFSET_CSR);
 reg &= ~FUSB300_CSR_LEN_MSK;
 reg |= FUSB300_CSR_LEN(length);
 iowrite32(reg, fusb300->reg + FUSB300_OFFSET_CSR);
}
