
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_desc {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct os_desc*) ;
 struct os_desc* to_os_desc (struct config_item*) ;

__attribute__((used)) static void os_desc_attr_release(struct config_item *item)
{
 struct os_desc *os_desc = to_os_desc(item);
 kfree(os_desc);
}
