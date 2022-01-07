
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc {scalar_t__ base; int dn_buf_dma; int dn_buf; } ;


 scalar_t__ WUSBDNTSBUFADDR ;
 int le_writeq (int ,scalar_t__) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void whc_hw_init_dn_buf(struct whc *whc)
{


 memset(whc->dn_buf, 0, 4096);

 le_writeq(whc->dn_buf_dma, whc->base + WUSBDNTSBUFADDR);
}
