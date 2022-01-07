
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct lpc32xx_udc {int suspended; TYPE_1__* board; } ;
struct TYPE_2__ {int (* susp_chgb ) (scalar_t__) ;} ;


 int stub1 (scalar_t__) ;

__attribute__((used)) static void uda_resm_susp_event(struct lpc32xx_udc *udc, u32 conn)
{

 if (udc->board->susp_chgb != ((void*)0))
  udc->board->susp_chgb(conn);

 if (conn)
  udc->suspended = 0;
 else
  udc->suspended = 1;
}
