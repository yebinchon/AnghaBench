
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_uac1_legacy_opts {struct usb_function_instance func_inst; int fn_cntl; int fn_cap; int fn_play; int audio_buf_size; int req_count; int req_buf_size; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int FILE_CONTROL ;
 int FILE_PCM_CAPTURE ;
 int FILE_PCM_PLAYBACK ;
 int GFP_KERNEL ;
 int UAC1_AUDIO_BUF_SIZE ;
 int UAC1_OUT_EP_MAX_PACKET_SIZE ;
 int UAC1_REQ_COUNT ;
 int config_group_init_type_name (int *,char*,int *) ;
 int f_audio_free_inst ;
 int f_uac1_func_type ;
 struct f_uac1_legacy_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct usb_function_instance *f_audio_alloc_inst(void)
{
 struct f_uac1_legacy_opts *opts;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = f_audio_free_inst;

 config_group_init_type_name(&opts->func_inst.group, "",
        &f_uac1_func_type);

 opts->req_buf_size = UAC1_OUT_EP_MAX_PACKET_SIZE;
 opts->req_count = UAC1_REQ_COUNT;
 opts->audio_buf_size = UAC1_AUDIO_BUF_SIZE;
 opts->fn_play = FILE_PCM_PLAYBACK;
 opts->fn_cap = FILE_PCM_CAPTURE;
 opts->fn_cntl = FILE_CONTROL;
 return &opts->func_inst;
}
