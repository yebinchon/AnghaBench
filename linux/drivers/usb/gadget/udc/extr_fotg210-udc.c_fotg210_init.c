
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fotg210_udc {scalar_t__ reg; } ;


 int DMCR_GLINT_EN ;
 int DMISGR0_MCX_COMEND ;
 scalar_t__ FOTG210_DMCR ;
 scalar_t__ FOTG210_DMISGR0 ;
 scalar_t__ FOTG210_DMISGR1 ;
 scalar_t__ FOTG210_GMIR ;
 int GMIR_INT_POLARITY ;
 int GMIR_MHC_INT ;
 int GMIR_MOTG_INT ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void fotg210_init(struct fotg210_udc *fotg210)
{
 u32 value;


 iowrite32(GMIR_MHC_INT | GMIR_MOTG_INT | GMIR_INT_POLARITY,
    fotg210->reg + FOTG210_GMIR);


 value = ioread32(fotg210->reg + FOTG210_DMCR);
 value &= ~DMCR_GLINT_EN;
 iowrite32(value, fotg210->reg + FOTG210_DMCR);


 iowrite32(~(u32)0, fotg210->reg + FOTG210_DMISGR1);


 value = ioread32(fotg210->reg + FOTG210_DMISGR0);
 value |= DMISGR0_MCX_COMEND;
 iowrite32(value, fotg210->reg + FOTG210_DMISGR0);
}
