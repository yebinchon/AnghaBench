
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int EPCTR; } ;


 int EPC_RST ;
 int _nbu2ss_bitclr (int *,int ) ;
 int _nbu2ss_bitset (int *,int ) ;

__attribute__((used)) static void _nbu2ss_reset_controller(struct nbu2ss_udc *udc)
{
 _nbu2ss_bitset(&udc->p_regs->EPCTR, EPC_RST);
 _nbu2ss_bitclr(&udc->p_regs->EPCTR, EPC_RST);
}
