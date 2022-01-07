
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_cols; } ;


 int say_line_from_to (struct vc_data*,int ,int ,int) ;
 int spk_x ;

__attribute__((used)) static void say_to_right(struct vc_data *vc)
{
 say_line_from_to(vc, spk_x, vc->vc_cols, 1);
}
