
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_space {int dummy; } ;
struct config_item {int dummy; } ;


 struct dlm_space* config_item_to_space (struct config_item*) ;
 int kfree (struct dlm_space*) ;

__attribute__((used)) static void release_space(struct config_item *i)
{
 struct dlm_space *sp = config_item_to_space(i);
 kfree(sp);
}
