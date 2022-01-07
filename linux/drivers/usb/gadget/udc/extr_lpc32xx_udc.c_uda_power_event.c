
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpc32xx_udc {TYPE_1__* board; } ;
struct TYPE_2__ {int (* conn_chgb ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void uda_power_event(struct lpc32xx_udc *udc, u32 conn)
{

 if (udc->board->conn_chgb != ((void*)0))
  udc->board->conn_chgb(conn);
}
