
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int pr_generation; } ;
struct TYPE_4__ {TYPE_1__ t10_pr; } ;


 TYPE_2__* pr_to_dev (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t target_pr_res_pr_generation_show(struct config_item *item,
  char *page)
{
 return sprintf(page, "0x%08x\n", pr_to_dev(item)->t10_pr.pr_generation);
}
