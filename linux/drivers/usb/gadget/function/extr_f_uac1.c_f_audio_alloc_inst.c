
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_uac1_opts {struct usb_function_instance func_inst; int req_number; int p_ssize; int p_srate; int p_chmask; int c_ssize; int c_srate; int c_chmask; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int UAC1_DEF_CCHMASK ;
 int UAC1_DEF_CSRATE ;
 int UAC1_DEF_CSSIZE ;
 int UAC1_DEF_PCHMASK ;
 int UAC1_DEF_PSRATE ;
 int UAC1_DEF_PSSIZE ;
 int UAC1_DEF_REQ_NUM ;
 int config_group_init_type_name (int *,char*,int *) ;
 int f_audio_free_inst ;
 int f_uac1_func_type ;
 struct f_uac1_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct usb_function_instance *f_audio_alloc_inst(void)
{
 struct f_uac1_opts *opts;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = f_audio_free_inst;

 config_group_init_type_name(&opts->func_inst.group, "",
        &f_uac1_func_type);

 opts->c_chmask = UAC1_DEF_CCHMASK;
 opts->c_srate = UAC1_DEF_CSRATE;
 opts->c_ssize = UAC1_DEF_CSSIZE;
 opts->p_chmask = UAC1_DEF_PCHMASK;
 opts->p_srate = UAC1_DEF_PSRATE;
 opts->p_ssize = UAC1_DEF_PSSIZE;
 opts->req_number = UAC1_DEF_REQ_NUM;
 return &opts->func_inst;
}
