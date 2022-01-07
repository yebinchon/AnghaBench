
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int otgcsr; int gmir; } ;


 int GMIR_INT_POLARITY ;
 int GMIR_MDEV_INT ;
 int GMIR_MOTG_INT ;
 int OTGCSR_A_BUS_DROP ;
 int OTGCSR_A_BUS_REQ ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static void fotg210_init(struct fotg210_hcd *fotg210)
{
 u32 value;

 iowrite32(GMIR_MDEV_INT | GMIR_MOTG_INT | GMIR_INT_POLARITY,
   &fotg210->regs->gmir);

 value = ioread32(&fotg210->regs->otgcsr);
 value &= ~OTGCSR_A_BUS_DROP;
 value |= OTGCSR_A_BUS_REQ;
 iowrite32(value, &fotg210->regs->otgcsr);
}
