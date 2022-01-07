
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* ci_parent; } ;
struct TYPE_10__ {TYPE_4__ cg_item; TYPE_1__* cg_subsys; } ;
struct uvcg_format {int bmaControls; scalar_t__ linked; TYPE_5__ group; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; scalar_t__ refcnt; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* ci_parent; } ;
struct TYPE_7__ {struct config_item* ci_parent; } ;
struct TYPE_6__ {struct mutex su_mutex; } ;


 int EBUSY ;
 int EINVAL ;
 int hex2bin (int ,char const*,int) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;

__attribute__((used)) static ssize_t uvcg_format_bma_controls_store(struct uvcg_format *ch,
           const char *page, size_t len)
{
 struct f_uvc_opts *opts;
 struct config_item *opts_item;
 struct mutex *su_mutex = &ch->group.cg_subsys->su_mutex;
 int ret = -EINVAL;

 mutex_lock(su_mutex);

 opts_item = ch->group.cg_item.ci_parent->ci_parent->ci_parent;
 opts = to_f_uvc_opts(opts_item);

 mutex_lock(&opts->lock);
 if (ch->linked || opts->refcnt) {
  ret = -EBUSY;
  goto end;
 }

 if (len < 4 || *page != '0' ||
     (*(page + 1) != 'x' && *(page + 1) != 'X'))
  goto end;
 ret = hex2bin(ch->bmaControls, page + 2, 1);
 if (ret < 0)
  goto end;
 ret = len;
end:
 mutex_unlock(&opts->lock);
 mutex_unlock(su_mutex);
 return ret;
}
