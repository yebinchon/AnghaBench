
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int announce_edge (struct vc_data*,int ) ;
 int edge_left ;
 int say_char (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 scalar_t__ spk_x ;

__attribute__((used)) static void say_prev_char(struct vc_data *vc)
{
 spk_parked |= 0x01;
 if (spk_x == 0) {
  announce_edge(vc, edge_left);
  return;
 }
 spk_x--;
 spk_pos -= 2;
 say_char(vc);
}
