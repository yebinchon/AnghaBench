
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int aborts_complete; } ;


 int PAGE_SIZE ;
 int atomic_long_read (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 TYPE_1__* to_stat_tgt_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_tgt_aborts_complete_show(struct config_item *item,
  char *page)
{
 return snprintf(page, PAGE_SIZE, "%lu\n",
   atomic_long_read(&to_stat_tgt_dev(item)->aborts_complete));
}
