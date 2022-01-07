
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvcg_streaming_header {int linked; } ;
struct uvc_descriptor_header {int dummy; } ;
struct mutex {int dummy; } ;
struct f_uvc_opts {struct mutex lock; int uvc_color_matching; scalar_t__ refcnt; } ;
struct config_item {struct config_item* ci_parent; TYPE_2__* ci_group; } ;
struct TYPE_4__ {TYPE_1__* cg_subsys; } ;
struct TYPE_3__ {struct mutex su_mutex; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __uvcg_cnt_strm ;
 int __uvcg_fill_strm ;
 struct uvc_descriptor_header*** __uvcg_get_stream_class_arr (struct config_item*,struct f_uvc_opts*) ;
 int __uvcg_iter_strm_cls (struct uvcg_streaming_header*,...) ;
 struct config_item* config_group_find_item (int ,char*) ;
 int config_item_put (struct config_item*) ;
 struct uvc_descriptor_header** kcalloc (size_t,int,int ) ;
 int kfree (void*) ;
 void* kzalloc (size_t,int ) ;
 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int to_config_group (struct config_item*) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;
 struct uvcg_streaming_header* to_uvcg_streaming_header (struct config_item*) ;

__attribute__((used)) static int uvcg_streaming_class_allow_link(struct config_item *src,
        struct config_item *target)
{
 struct config_item *streaming, *header;
 struct f_uvc_opts *opts;
 struct mutex *su_mutex = &src->ci_group->cg_subsys->su_mutex;
 struct uvc_descriptor_header ***class_array, **cl_arr;
 struct uvcg_streaming_header *target_hdr;
 void *data, *data_save;
 size_t size = 0, count = 0;
 int ret = -EINVAL;

 mutex_lock(su_mutex);

 streaming = src->ci_parent->ci_parent;
 header = config_group_find_item(to_config_group(streaming), "header");
 if (!header || target->ci_parent != header)
  goto out;

 opts = to_f_uvc_opts(streaming->ci_parent);

 mutex_lock(&opts->lock);

 class_array = __uvcg_get_stream_class_arr(src, opts);
 if (!class_array || *class_array || opts->refcnt) {
  ret = -EBUSY;
  goto unlock;
 }

 target_hdr = to_uvcg_streaming_header(target);
 ret = __uvcg_iter_strm_cls(target_hdr, &size, &count, __uvcg_cnt_strm);
 if (ret)
  goto unlock;

 count += 2;
 *class_array = kcalloc(count, sizeof(void *), GFP_KERNEL);
 if (!*class_array) {
  ret = -ENOMEM;
  goto unlock;
 }

 data = data_save = kzalloc(size, GFP_KERNEL);
 if (!data) {
  kfree(*class_array);
  *class_array = ((void*)0);
  ret = -ENOMEM;
  goto unlock;
 }
 cl_arr = *class_array;
 ret = __uvcg_iter_strm_cls(target_hdr, &data, &cl_arr,
       __uvcg_fill_strm);
 if (ret) {
  kfree(*class_array);
  *class_array = ((void*)0);




  kfree(data_save);
  goto unlock;
 }
 *cl_arr = (struct uvc_descriptor_header *)&opts->uvc_color_matching;

 ++target_hdr->linked;
 ret = 0;

unlock:
 mutex_unlock(&opts->lock);
out:
 config_item_put(header);
 mutex_unlock(su_mutex);
 return ret;
}
