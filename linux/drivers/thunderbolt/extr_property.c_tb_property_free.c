
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tb_property* text; struct tb_property* data; int dir; } ;
struct tb_property {int type; TYPE_1__ value; } ;





 int kfree (struct tb_property*) ;
 int tb_property_free_dir (int ) ;

__attribute__((used)) static void tb_property_free(struct tb_property *property)
{
 switch (property->type) {
 case 129:
  tb_property_free_dir(property->value.dir);
  break;

 case 130:
  kfree(property->value.data);
  break;

 case 128:
  kfree(property->value.text);
  break;

 default:
  break;
 }

 kfree(property);
}
