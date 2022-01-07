
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
struct uvcg_format {int* bmaControls; TYPE_5__ group; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_8__ {TYPE_2__* ci_parent; } ;
struct TYPE_7__ {struct config_item* ci_parent; } ;
struct TYPE_6__ {struct mutex su_mutex; } ;


 int UVCG_STREAMING_CONTROL_SIZE ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int sprintf (char*,char*,...) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;

__attribute__((used)) static ssize_t uvcg_format_bma_controls_show(struct uvcg_format *f, char *page)
{
 struct f_uvc_opts *opts;
 struct config_item *opts_item;
 struct mutex *su_mutex = &f->group.cg_subsys->su_mutex;
 int result, i;
 char *pg = page;

 mutex_lock(su_mutex);

 opts_item = f->group.cg_item.ci_parent->ci_parent->ci_parent;
 opts = to_f_uvc_opts(opts_item);

 mutex_lock(&opts->lock);
 result = sprintf(pg, "0x");
 pg += result;
 for (i = 0; i < UVCG_STREAMING_CONTROL_SIZE; ++i) {
  result += sprintf(pg, "%x\n", f->bmaControls[i]);
  pg = page + result;
 }
 mutex_unlock(&opts->lock);

 mutex_unlock(su_mutex);
 return result;
}
