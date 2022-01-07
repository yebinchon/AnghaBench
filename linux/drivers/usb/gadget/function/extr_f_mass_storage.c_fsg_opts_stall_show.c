
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_opts {int lock; TYPE_1__* common; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int can_stall; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct fsg_opts* to_fsg_opts (struct config_item*) ;

__attribute__((used)) static ssize_t fsg_opts_stall_show(struct config_item *item, char *page)
{
 struct fsg_opts *opts = to_fsg_opts(item);
 int result;

 mutex_lock(&opts->lock);
 result = sprintf(page, "%d", opts->common->can_stall);
 mutex_unlock(&opts->lock);

 return result;
}
