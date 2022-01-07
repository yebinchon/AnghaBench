
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_lb_opts {int bulk_buflen; int lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct f_lb_opts* to_f_lb_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_lb_opts_bulk_buflen_show(struct config_item *item, char *page)
{
 struct f_lb_opts *opts = to_f_lb_opts(item);
 int result;

 mutex_lock(&opts->lock);
 result = sprintf(page, "%d\n", opts->bulk_buflen);
 mutex_unlock(&opts->lock);

 return result;
}
