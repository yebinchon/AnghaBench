
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_midi_opts {int refcnt; int id_allocated; char* id; int lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_midi_opts* to_f_midi_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_midi_opts_id_store(struct config_item *item,
        const char *page, size_t len)
{
 struct f_midi_opts *opts = to_f_midi_opts(item);
 int ret;
 char *c;

 mutex_lock(&opts->lock);
 if (opts->refcnt > 1) {
  ret = -EBUSY;
  goto end;
 }

 c = kstrndup(page, len, GFP_KERNEL);
 if (!c) {
  ret = -ENOMEM;
  goto end;
 }
 if (opts->id_allocated)
  kfree(opts->id);
 opts->id = c;
 opts->id_allocated = 1;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 return ret;
}
