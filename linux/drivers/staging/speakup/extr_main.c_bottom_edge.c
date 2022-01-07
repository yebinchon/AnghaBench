
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_rows; int vc_size_row; } ;


 int say_line (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 int spk_y ;

__attribute__((used)) static void bottom_edge(struct vc_data *vc)
{
 spk_parked |= 0x01;
 spk_pos += (vc->vc_rows - spk_y - 1) * vc->vc_size_row;
 spk_y = vc->vc_rows - 1;
 say_line(vc);
}
