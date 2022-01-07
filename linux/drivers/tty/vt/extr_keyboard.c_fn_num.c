
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int VC_APPLIC ;
 int applkey (struct vc_data*,char,int) ;
 int fn_bare_num (struct vc_data*) ;
 int kbd ;
 scalar_t__ vc_kbd_mode (int ,int ) ;

__attribute__((used)) static void fn_num(struct vc_data *vc)
{
 if (vc_kbd_mode(kbd, VC_APPLIC))
  applkey(vc, 'P', 1);
 else
  fn_bare_num(vc);
}
