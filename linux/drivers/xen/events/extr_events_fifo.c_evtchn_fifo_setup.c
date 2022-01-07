
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_info {unsigned int evtchn; } ;
struct evtchn_expand_array {int array_gfn; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned int EVENT_WORDS_PER_PAGE ;
 int EVTCHNOP_expand_array ;
 int GFP_KERNEL ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_expand_array*) ;
 unsigned int MAX_EVENT_ARRAY_PAGES ;
 scalar_t__ __get_free_page (int ) ;
 void** event_array ;
 unsigned int event_array_pages ;
 int free_unused_array_pages () ;
 int init_array_page (void*) ;
 int panic (char*,int) ;
 int pr_err (char*,int) ;
 int virt_to_gfn (void*) ;

__attribute__((used)) static int evtchn_fifo_setup(struct irq_info *info)
{
 unsigned port = info->evtchn;
 unsigned new_array_pages;
 int ret;

 new_array_pages = port / EVENT_WORDS_PER_PAGE + 1;

 if (new_array_pages > MAX_EVENT_ARRAY_PAGES)
  return -EINVAL;

 while (event_array_pages < new_array_pages) {
  void *array_page;
  struct evtchn_expand_array expand_array;


  array_page = event_array[event_array_pages];
  if (!array_page) {
   array_page = (void *)__get_free_page(GFP_KERNEL);
   if (array_page == ((void*)0)) {
    ret = -ENOMEM;
    goto error;
   }
   event_array[event_array_pages] = array_page;
  }


  init_array_page(array_page);

  expand_array.array_gfn = virt_to_gfn(array_page);

  ret = HYPERVISOR_event_channel_op(EVTCHNOP_expand_array, &expand_array);
  if (ret < 0)
   goto error;

  event_array_pages++;
 }
 return 0;

  error:
 if (event_array_pages == 0)
  panic("xen: unable to expand event array with initial page (%d)\n", ret);
 else
  pr_err("unable to expand event array (%d)\n", ret);
 free_unused_array_pages();
 return ret;
}
