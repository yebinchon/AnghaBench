
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; } ;
struct TYPE_2__ {int SETUP_DATA1; int SETUP_DATA0; } ;


 int _nbu2ss_readl (int *) ;

__attribute__((used)) static inline void _nbu2ss_read_request_data(struct nbu2ss_udc *udc, u32 *pdata)
{
 *pdata = _nbu2ss_readl(&udc->p_regs->SETUP_DATA0);
 pdata++;
 *pdata = _nbu2ss_readl(&udc->p_regs->SETUP_DATA1);
}
