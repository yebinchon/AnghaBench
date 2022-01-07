
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cg_item; } ;
struct dlm_space {TYPE_1__ group; } ;


 int config_item_put (int *) ;

__attribute__((used)) static void put_space(struct dlm_space *sp)
{
 config_item_put(&sp->group.cg_item);
}
