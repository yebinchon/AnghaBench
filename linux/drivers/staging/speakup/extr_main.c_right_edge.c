
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_cols; } ;


 int say_char (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 int spk_x ;

__attribute__((used)) static void right_edge(struct vc_data *vc)
{
 spk_parked |= 0x01;
 spk_pos += (vc->vc_cols - spk_x - 1) * 2;
 spk_x = vc->vc_cols - 1;
 say_char(vc);
}
