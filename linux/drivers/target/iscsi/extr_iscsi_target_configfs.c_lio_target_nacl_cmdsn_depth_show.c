
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int queue_depth; } ;


 TYPE_1__* acl_to_nacl (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t lio_target_nacl_cmdsn_depth_show(struct config_item *item,
  char *page)
{
 return sprintf(page, "%u\n", acl_to_nacl(item)->queue_depth);
}
