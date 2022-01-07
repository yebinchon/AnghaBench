
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int weight; } ;


 TYPE_1__* config_item_to_node (struct config_item*) ;
 int kstrtoint (char const*,int ,int *) ;

__attribute__((used)) static ssize_t node_weight_store(struct config_item *item, const char *buf,
     size_t len)
{
 int rc = kstrtoint(buf, 0, &config_item_to_node(item)->weight);

 if (rc)
  return rc;
 return len;
}
