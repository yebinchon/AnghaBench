
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_fast_private {TYPE_1__* uf_regs; } ;
struct TYPE_2__ {int utodr; } ;


 int UCC_FAST_TOD ;
 int out_be16 (int *,int ) ;

void ucc_fast_transmit_on_demand(struct ucc_fast_private * uccf)
{
 out_be16(&uccf->uf_regs->utodr, UCC_FAST_TOD);
}
