
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int say_line_from_to (struct vc_data*,int ,int ,int) ;
 int spk_x ;

__attribute__((used)) static void say_from_left(struct vc_data *vc)
{
 say_line_from_to(vc, 0, spk_x, 1);
}
