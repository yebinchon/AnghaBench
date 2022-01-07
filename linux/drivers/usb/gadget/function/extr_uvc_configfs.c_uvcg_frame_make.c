
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct TYPE_7__ {int b_frame_index; int w_width; int w_height; int dw_min_bit_rate; int dw_max_bit_rate; int dw_max_video_frame_buffer_size; int dw_default_frame_interval; int b_descriptor_subtype; int b_descriptor_type; } ;
struct uvcg_frame {struct config_item item; scalar_t__ fmt_type; TYPE_3__ frame; } ;
struct uvcg_format {scalar_t__ type; int num_frames; } ;
struct f_uvc_opts {int lock; } ;
struct TYPE_8__ {TYPE_2__* ci_parent; } ;
struct config_group {TYPE_4__ cg_item; } ;
struct TYPE_6__ {TYPE_1__* ci_parent; } ;
struct TYPE_5__ {struct config_item* ci_parent; } ;


 int EINVAL ;
 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int USB_DT_CS_INTERFACE ;
 scalar_t__ UVCG_MJPEG ;
 scalar_t__ UVCG_UNCOMPRESSED ;
 int UVC_VS_FRAME_MJPEG ;
 int UVC_VS_FRAME_UNCOMPRESSED ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 int kfree (struct uvcg_frame*) ;
 struct uvcg_frame* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_uvc_opts* to_f_uvc_opts (struct config_item*) ;
 struct uvcg_format* to_uvcg_format (TYPE_4__*) ;
 int uvcg_frame_type ;

__attribute__((used)) static struct config_item *uvcg_frame_make(struct config_group *group,
        const char *name)
{
 struct uvcg_frame *h;
 struct uvcg_format *fmt;
 struct f_uvc_opts *opts;
 struct config_item *opts_item;

 h = kzalloc(sizeof(*h), GFP_KERNEL);
 if (!h)
  return ERR_PTR(-ENOMEM);

 h->frame.b_descriptor_type = USB_DT_CS_INTERFACE;
 h->frame.b_frame_index = 1;
 h->frame.w_width = 640;
 h->frame.w_height = 360;
 h->frame.dw_min_bit_rate = 18432000;
 h->frame.dw_max_bit_rate = 55296000;
 h->frame.dw_max_video_frame_buffer_size = 460800;
 h->frame.dw_default_frame_interval = 666666;

 opts_item = group->cg_item.ci_parent->ci_parent->ci_parent;
 opts = to_f_uvc_opts(opts_item);

 mutex_lock(&opts->lock);
 fmt = to_uvcg_format(&group->cg_item);
 if (fmt->type == UVCG_UNCOMPRESSED) {
  h->frame.b_descriptor_subtype = UVC_VS_FRAME_UNCOMPRESSED;
  h->fmt_type = UVCG_UNCOMPRESSED;
 } else if (fmt->type == UVCG_MJPEG) {
  h->frame.b_descriptor_subtype = UVC_VS_FRAME_MJPEG;
  h->fmt_type = UVCG_MJPEG;
 } else {
  mutex_unlock(&opts->lock);
  kfree(h);
  return ERR_PTR(-EINVAL);
 }
 ++fmt->num_frames;
 mutex_unlock(&opts->lock);

 config_item_init_type_name(&h->item, name, &uvcg_frame_type);

 return &h->item;
}
