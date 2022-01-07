
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {struct mon_bus* mon_bus; } ;
struct mon_bus {int bus_link; int bin_inited; int text_inited; struct usb_bus* u_bus; int r_list; int lock; int ref; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 struct mon_bus* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mon_bin_add (struct mon_bus*,struct usb_bus*) ;
 int mon_buses ;
 int mon_lock ;
 int mon_text_add (struct mon_bus*,struct usb_bus*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void mon_bus_init(struct usb_bus *ubus)
{
 struct mon_bus *mbus;

 mbus = kzalloc(sizeof(struct mon_bus), GFP_KERNEL);
 if (mbus == ((void*)0))
  goto err_alloc;
 kref_init(&mbus->ref);
 spin_lock_init(&mbus->lock);
 INIT_LIST_HEAD(&mbus->r_list);





 mbus->u_bus = ubus;
 ubus->mon_bus = mbus;

 mbus->text_inited = mon_text_add(mbus, ubus);
 mbus->bin_inited = mon_bin_add(mbus, ubus);

 mutex_lock(&mon_lock);
 list_add_tail(&mbus->bus_link, &mon_buses);
 mutex_unlock(&mon_lock);
 return;

err_alloc:
 return;
}
