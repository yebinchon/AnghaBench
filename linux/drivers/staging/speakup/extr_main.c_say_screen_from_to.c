
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct vc_data {scalar_t__ vc_origin; scalar_t__ vc_size_row; scalar_t__ vc_rows; } ;


 int say_from_to (struct vc_data*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void say_screen_from_to(struct vc_data *vc, u_long from, u_long to)
{
 u_long start = vc->vc_origin, end;

 if (from > 0)
  start += from * vc->vc_size_row;
 if (to > vc->vc_rows)
  to = vc->vc_rows;
 end = vc->vc_origin + (to * vc->vc_size_row);
 for (from = start; from < end; from = to) {
  to = from + vc->vc_size_row;
  say_from_to(vc, from, to, 1);
 }
}
