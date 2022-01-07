
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* acl_tag; } ;


 int PAGE_SIZE ;
 TYPE_1__* acl_to_nacl (struct config_item*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t lio_target_nacl_tag_show(struct config_item *item, char *page)
{
 return snprintf(page, PAGE_SIZE, "%s", acl_to_nacl(item)->acl_tag);
}
