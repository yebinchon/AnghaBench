
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct console_font_op {int op; } ;


 int ENOSYS ;




 int con_font_copy (struct vc_data*,struct console_font_op*) ;
 int con_font_default (struct vc_data*,struct console_font_op*) ;
 int con_font_get (struct vc_data*,struct console_font_op*) ;
 int con_font_set (struct vc_data*,struct console_font_op*) ;

int con_font_op(struct vc_data *vc, struct console_font_op *op)
{
 switch (op->op) {
 case 129:
  return con_font_set(vc, op);
 case 130:
  return con_font_get(vc, op);
 case 128:
  return con_font_default(vc, op);
 case 131:
  return con_font_copy(vc, op);
 }
 return -ENOSYS;
}
