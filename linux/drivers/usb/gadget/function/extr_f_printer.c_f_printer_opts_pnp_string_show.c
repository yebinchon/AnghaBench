
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_printer_opts {int lock; int pnp_string; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlcpy (char*,int ,int) ;
 struct f_printer_opts* to_f_printer_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_printer_opts_pnp_string_show(struct config_item *item,
           char *page)
{
 struct f_printer_opts *opts = to_f_printer_opts(item);
 int result = 0;

 mutex_lock(&opts->lock);
 if (!opts->pnp_string)
  goto unlock;

 result = strlcpy(page, opts->pnp_string, PAGE_SIZE);
 if (result >= PAGE_SIZE) {
  result = PAGE_SIZE;
 } else if (page[result - 1] != '\n' && result + 1 < PAGE_SIZE) {
  page[result++] = '\n';
  page[result] = '\0';
 }

unlock:
 mutex_unlock(&opts->lock);

 return result;
}
