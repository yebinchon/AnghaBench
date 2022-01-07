
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_origin; } ;


 int say_line (struct vc_data*) ;
 int spk_parked ;
 scalar_t__ spk_pos ;
 int spk_x ;
 scalar_t__ spk_y ;

__attribute__((used)) static void top_edge(struct vc_data *vc)
{
 spk_parked |= 0x01;
 spk_pos = vc->vc_origin + 2 * spk_x;
 spk_y = 0;
 say_line(vc);
}
