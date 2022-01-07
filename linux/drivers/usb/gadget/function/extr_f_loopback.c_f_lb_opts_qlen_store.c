
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct f_lb_opts {int lock; int qlen; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int kstrtou32 (char const*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_lb_opts* to_f_lb_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_lb_opts_qlen_store(struct config_item *item,
        const char *page, size_t len)
{
 struct f_lb_opts *opts = to_f_lb_opts(item);
 int ret;
 u32 num;

 mutex_lock(&opts->lock);
 if (opts->refcnt) {
  ret = -EBUSY;
  goto end;
 }

 ret = kstrtou32(page, 0, &num);
 if (ret)
  goto end;

 opts->qlen = num;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 return ret;
}
