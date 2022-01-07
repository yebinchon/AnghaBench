
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct fnic {int dummy; } ;


 int fip_timer ;
 struct fnic* fnic ;
 int fnic_handle_fip_timer (struct fnic*) ;
 struct fnic* from_timer (int ,struct timer_list*,int ) ;

__attribute__((used)) static void fnic_fip_notify_timer(struct timer_list *t)
{
 struct fnic *fnic = from_timer(fnic, t, fip_timer);

 fnic_handle_fip_timer(fnic);
}
