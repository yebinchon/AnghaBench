
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xencons_info {int * intf; } ;
struct TYPE_4__ {int evtchn; } ;
struct TYPE_5__ {TYPE_1__ domU; } ;
struct TYPE_6__ {TYPE_2__ console; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HVC_COOKIE ;
 struct xencons_info* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct xencons_info* vtermno_to_xencons (int ) ;
 int xen_pv_domain () ;
 TYPE_3__* xen_start_info ;
 int xencons_info_pv_init (struct xencons_info*,int ) ;
 int xencons_lock ;

__attribute__((used)) static int xen_pv_console_init(void)
{
 struct xencons_info *info;

 if (!xen_pv_domain())
  return -ENODEV;

 if (!xen_start_info->console.domU.evtchn)
  return -ENODEV;

 info = vtermno_to_xencons(HVC_COOKIE);
 if (!info) {
  info = kzalloc(sizeof(struct xencons_info), GFP_KERNEL);
  if (!info)
   return -ENOMEM;
 } else if (info->intf != ((void*)0)) {

  return 0;
 }
 spin_lock(&xencons_lock);
 xencons_info_pv_init(info, HVC_COOKIE);
 spin_unlock(&xencons_lock);

 return 0;
}
