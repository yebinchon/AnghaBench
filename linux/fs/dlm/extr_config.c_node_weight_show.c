
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int weight; } ;


 TYPE_1__* config_item_to_node (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t node_weight_show(struct config_item *item, char *buf)
{
 return sprintf(buf, "%d\n", config_item_to_node(item)->weight);
}
