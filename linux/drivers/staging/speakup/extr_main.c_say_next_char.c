
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_cols; } ;


 int announce_edge (struct vc_data*,int ) ;
 int edge_right ;
 int say_char (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 int spk_x ;

__attribute__((used)) static void say_next_char(struct vc_data *vc)
{
 spk_parked |= 0x01;
 if (spk_x == vc->vc_cols - 1) {
  announce_edge(vc, edge_right);
  return;
 }
 spk_x++;
 spk_pos += 2;
 say_char(vc);
}
