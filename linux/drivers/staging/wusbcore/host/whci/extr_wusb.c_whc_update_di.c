
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ WUSBDIBUPDATED ;
 int le_writel (int,scalar_t__) ;
 int whci_wait_for (int *,scalar_t__,int,int ,int,char*) ;

__attribute__((used)) static int whc_update_di(struct whc *whc, int idx)
{
 int offset = idx / 32;
 u32 bit = 1 << (idx % 32);

 le_writel(bit, whc->base + WUSBDIBUPDATED + offset);

 return whci_wait_for(&whc->umc->dev,
        whc->base + WUSBDIBUPDATED + offset, bit, 0,
        100, "DI update");
}
