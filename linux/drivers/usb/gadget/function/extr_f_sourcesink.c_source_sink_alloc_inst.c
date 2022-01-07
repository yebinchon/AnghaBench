
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function_instance {int group; int free_func_inst; } ;
struct f_ss_opts {struct usb_function_instance func_inst; int iso_qlen; int bulk_qlen; int bulk_buflen; int isoc_maxpacket; int isoc_interval; int lock; } ;


 int ENOMEM ;
 struct usb_function_instance* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int GZERO_BULK_BUFLEN ;
 int GZERO_ISOC_INTERVAL ;
 int GZERO_ISOC_MAXPACKET ;
 int GZERO_SS_BULK_QLEN ;
 int GZERO_SS_ISO_QLEN ;
 int config_group_init_type_name (int *,char*,int *) ;
 struct f_ss_opts* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int source_sink_free_instance ;
 int ss_func_type ;

__attribute__((used)) static struct usb_function_instance *source_sink_alloc_inst(void)
{
 struct f_ss_opts *ss_opts;

 ss_opts = kzalloc(sizeof(*ss_opts), GFP_KERNEL);
 if (!ss_opts)
  return ERR_PTR(-ENOMEM);
 mutex_init(&ss_opts->lock);
 ss_opts->func_inst.free_func_inst = source_sink_free_instance;
 ss_opts->isoc_interval = GZERO_ISOC_INTERVAL;
 ss_opts->isoc_maxpacket = GZERO_ISOC_MAXPACKET;
 ss_opts->bulk_buflen = GZERO_BULK_BUFLEN;
 ss_opts->bulk_qlen = GZERO_SS_BULK_QLEN;
 ss_opts->iso_qlen = GZERO_SS_ISO_QLEN;

 config_group_init_type_name(&ss_opts->func_inst.group, "",
        &ss_func_type);

 return &ss_opts->func_inst;
}
