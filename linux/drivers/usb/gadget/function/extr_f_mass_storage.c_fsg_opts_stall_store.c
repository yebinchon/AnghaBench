
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsg_opts {int lock; TYPE_1__* common; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int can_stall; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 struct fsg_opts* to_fsg_opts (struct config_item*) ;

__attribute__((used)) static ssize_t fsg_opts_stall_store(struct config_item *item, const char *page,
        size_t len)
{
 struct fsg_opts *opts = to_fsg_opts(item);
 int ret;
 bool stall;

 mutex_lock(&opts->lock);

 if (opts->refcnt) {
  mutex_unlock(&opts->lock);
  return -EBUSY;
 }

 ret = strtobool(page, &stall);
 if (!ret) {
  opts->common->can_stall = stall;
  ret = len;
 }

 mutex_unlock(&opts->lock);

 return ret;
}
