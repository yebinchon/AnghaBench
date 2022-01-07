
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct xencons_info {int list; int vtermno; int * intf; void* evtchn; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HVC_COOKIE ;
 int HVM_PARAM_CONSOLE_EVTCHN ;
 int HVM_PARAM_CONSOLE_PFN ;
 unsigned long XEN_PAGE_SHIFT ;
 int XEN_PAGE_SIZE ;
 int hvm_get_parameter (int ,void**) ;
 int kfree (struct xencons_info*) ;
 struct xencons_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xencons_info* vtermno_to_xencons (int ) ;
 int xen_hvm_domain () ;
 int * xen_remap (unsigned long,int ) ;
 int xencons_lock ;
 int xenconsoles ;

__attribute__((used)) static int xen_hvm_console_init(void)
{
 int r;
 uint64_t v = 0;
 unsigned long gfn;
 struct xencons_info *info;

 if (!xen_hvm_domain())
  return -ENODEV;

 info = vtermno_to_xencons(HVC_COOKIE);
 if (!info) {
  info = kzalloc(sizeof(struct xencons_info), GFP_KERNEL);
  if (!info)
   return -ENOMEM;
 } else if (info->intf != ((void*)0)) {

  return 0;
 }






 r = hvm_get_parameter(HVM_PARAM_CONSOLE_EVTCHN, &v);
 if (r < 0 || v == 0)
  goto err;
 info->evtchn = v;
 v = 0;
 r = hvm_get_parameter(HVM_PARAM_CONSOLE_PFN, &v);
 if (r < 0 || v == 0)
  goto err;
 gfn = v;
 info->intf = xen_remap(gfn << XEN_PAGE_SHIFT, XEN_PAGE_SIZE);
 if (info->intf == ((void*)0))
  goto err;
 info->vtermno = HVC_COOKIE;

 spin_lock(&xencons_lock);
 list_add_tail(&info->list, &xenconsoles);
 spin_unlock(&xencons_lock);

 return 0;
err:
 kfree(info);
 return -ENODEV;
}
