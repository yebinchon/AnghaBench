
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_midi_opts {int buflen; int qlen; int in_ports; int out_ports; int refcnt; struct usb_function_instance func_inst; int id; int index; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SNDRV_DEFAULT_IDX1 ;
 int SNDRV_DEFAULT_STR1 ;
 int config_group_init_type_name (int *,char*,int *) ;
 int f_midi_free_inst ;
 struct f_midi_opts* kzalloc (int,int ) ;
 int midi_func_type ;
 int mutex_init (int *) ;

__attribute__((used)) static struct usb_function_instance *f_midi_alloc_inst(void)
{
 struct f_midi_opts *opts;

 opts = kzalloc(sizeof(*opts), GFP_KERNEL);
 if (!opts)
  return ERR_PTR(-ENOMEM);

 mutex_init(&opts->lock);
 opts->func_inst.free_func_inst = f_midi_free_inst;
 opts->index = SNDRV_DEFAULT_IDX1;
 opts->id = SNDRV_DEFAULT_STR1;
 opts->buflen = 512;
 opts->qlen = 32;
 opts->in_ports = 1;
 opts->out_ports = 1;
 opts->refcnt = 1;

 config_group_init_type_name(&opts->func_inst.group, "",
        &midi_func_type);

 return &opts->func_inst;
}
