
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ohci_hcd {TYPE_2__* regs; } ;
struct TYPE_3__ {int b; } ;
struct TYPE_4__ {TYPE_1__ roothub; } ;


 int ohci_readl (struct ohci_hcd*,int *) ;

__attribute__((used)) static inline u32 roothub_b (struct ohci_hcd *hc)
 { return ohci_readl (hc, &hc->regs->roothub.b); }
