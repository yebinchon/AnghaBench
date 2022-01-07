
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int dummy; } ;


 int uda_clear_hwepint (struct lpc32xx_udc*,int ) ;
 int udc_selep_clrint (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static inline u32 udc_clearep_getsts(struct lpc32xx_udc *udc, u32 hwep)
{

 uda_clear_hwepint(udc, hwep);
 return udc_selep_clrint(udc, hwep);
}
