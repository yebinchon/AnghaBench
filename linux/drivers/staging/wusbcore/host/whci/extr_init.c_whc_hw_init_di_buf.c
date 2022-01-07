
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct whc {int n_devices; scalar_t__ base; int di_buf_dma; TYPE_1__* di_buf; } ;
struct TYPE_2__ {int addr_sec_info; } ;


 int WHC_DI_DISABLE ;
 scalar_t__ WUSBDEVICEINFOADDR ;
 int le_writeq (int ,scalar_t__) ;

__attribute__((used)) static void whc_hw_init_di_buf(struct whc *whc)
{
 int d;


 for (d = 0; d < whc->n_devices; d++)
  whc->di_buf[d].addr_sec_info = WHC_DI_DISABLE;

 le_writeq(whc->di_buf_dma, whc->base + WUSBDEVICEINFOADDR);
}
