
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_hid_opts {char* report_desc; size_t report_desc_length; int report_desc_alloc; int lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int kfree (char*) ;
 char* kmemdup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_hid_opts* to_f_hid_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_hid_opts_report_desc_store(struct config_item *item,
         const char *page, size_t len)
{
 struct f_hid_opts *opts = to_f_hid_opts(item);
 int ret = -EBUSY;
 char *d;

 mutex_lock(&opts->lock);

 if (opts->refcnt)
  goto end;
 if (len > PAGE_SIZE) {
  ret = -ENOSPC;
  goto end;
 }
 d = kmemdup(page, len, GFP_KERNEL);
 if (!d) {
  ret = -ENOMEM;
  goto end;
 }
 kfree(opts->report_desc);
 opts->report_desc = d;
 opts->report_desc_length = len;
 opts->report_desc_alloc = 1;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 return ret;
}
