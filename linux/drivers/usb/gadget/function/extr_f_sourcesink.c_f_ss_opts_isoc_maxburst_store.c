
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct f_ss_opts {int isoc_maxburst; int lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int kstrtou8 (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_ss_opts* to_f_ss_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_ss_opts_isoc_maxburst_store(struct config_item *item,
           const char *page, size_t len)
{
 struct f_ss_opts *opts = to_f_ss_opts(item);
 int ret;
 u8 num;

 mutex_lock(&opts->lock);
 if (opts->refcnt) {
  ret = -EBUSY;
  goto end;
 }

 ret = kstrtou8(page, 0, &num);
 if (ret)
  goto end;

 if (num > 15) {
  ret = -EINVAL;
  goto end;
 }

 opts->isoc_maxburst = num;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 return ret;
}
