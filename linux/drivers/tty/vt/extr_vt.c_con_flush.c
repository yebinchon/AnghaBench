
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {int vc_y; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_putcs ) (struct vc_data*,int *,int,int ,int) ;} ;


 int stub1 (struct vc_data*,int *,int,int ,int) ;

__attribute__((used)) static void con_flush(struct vc_data *vc, unsigned long draw_from,
  unsigned long draw_to, int *draw_x)
{
 if (*draw_x < 0)
  return;

 vc->vc_sw->con_putcs(vc, (u16 *)draw_from,
   (u16 *)draw_to - (u16 *)draw_from, vc->vc_y, *draw_x);
 *draw_x = -1;
}
