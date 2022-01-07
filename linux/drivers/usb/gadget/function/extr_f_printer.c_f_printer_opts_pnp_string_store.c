
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_printer_opts {int pnp_string_allocated; char* pnp_string; int lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_printer_opts* to_f_printer_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_printer_opts_pnp_string_store(struct config_item *item,
            const char *page, size_t len)
{
 struct f_printer_opts *opts = to_f_printer_opts(item);
 char *new_pnp;
 int result;

 mutex_lock(&opts->lock);

 new_pnp = kstrndup(page, len, GFP_KERNEL);
 if (!new_pnp) {
  result = -ENOMEM;
  goto unlock;
 }

 if (opts->pnp_string_allocated)
  kfree(opts->pnp_string);

 opts->pnp_string_allocated = 1;
 opts->pnp_string = new_pnp;
 result = len;
unlock:
 mutex_unlock(&opts->lock);

 return result;
}
