
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_rows; scalar_t__ vc_size_row; } ;


 int announce_edge (struct vc_data*,int ) ;
 int edge_bottom ;
 int say_line (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 int spk_y ;

__attribute__((used)) static void say_next_line(struct vc_data *vc)
{
 spk_parked |= 0x01;
 if (spk_y == vc->vc_rows - 1) {
  announce_edge(vc, edge_bottom);
  return;
 }
 spk_y++;
 spk_pos += vc->vc_size_row;
 say_line(vc);
}
