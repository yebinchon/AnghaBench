
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int say_char (struct vc_data*) ;
 int spk_parked ;
 int spk_pos ;
 int spk_x ;

__attribute__((used)) static void left_edge(struct vc_data *vc)
{
 spk_parked |= 0x01;
 spk_pos -= spk_x * 2;
 spk_x = 0;
 say_char(vc);
}
