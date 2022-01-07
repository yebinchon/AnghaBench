
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_ss_opts {int pattern; int lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct f_ss_opts* to_f_ss_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_ss_opts_pattern_show(struct config_item *item, char *page)
{
 struct f_ss_opts *opts = to_f_ss_opts(item);
 int result;

 mutex_lock(&opts->lock);
 result = sprintf(page, "%u\n", opts->pattern);
 mutex_unlock(&opts->lock);

 return result;
}
