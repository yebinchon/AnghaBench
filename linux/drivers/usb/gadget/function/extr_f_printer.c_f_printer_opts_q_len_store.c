
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct f_printer_opts {unsigned int q_len; int lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int kstrtou16 (char const*,int ,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_printer_opts* to_f_printer_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_printer_opts_q_len_store(struct config_item *item,
       const char *page, size_t len)
{
 struct f_printer_opts *opts = to_f_printer_opts(item);
 int ret;
 u16 num;

 mutex_lock(&opts->lock);
 if (opts->refcnt) {
  ret = -EBUSY;
  goto end;
 }

 ret = kstrtou16(page, 0, &num);
 if (ret)
  goto end;

 opts->q_len = (unsigned)num;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 return ret;
}
