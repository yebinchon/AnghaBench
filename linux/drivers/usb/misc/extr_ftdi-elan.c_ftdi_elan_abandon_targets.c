
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ftdi {int expected; int u132_lock; scalar_t__ ed_found; scalar_t__ received; struct u132_target* target; } ;
struct u132_target {int active; int condition_code; } ;


 int TD_DEVNOTRESP ;
 int ftdi_elan_do_callback (struct usb_ftdi*,struct u132_target*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ftdi_elan_abandon_targets(struct usb_ftdi *ftdi)
{
 int ed_number = 4;
 mutex_lock(&ftdi->u132_lock);
 while (ed_number-- > 0) {
  struct u132_target *target = &ftdi->target[ed_number];
  if (target->active == 1) {
   target->condition_code = TD_DEVNOTRESP;
   mutex_unlock(&ftdi->u132_lock);
   ftdi_elan_do_callback(ftdi, target, ((void*)0), 0);
   mutex_lock(&ftdi->u132_lock);
  }
 }
 ftdi->received = 0;
 ftdi->expected = 4;
 ftdi->ed_found = 0;
 mutex_unlock(&ftdi->u132_lock);
}
