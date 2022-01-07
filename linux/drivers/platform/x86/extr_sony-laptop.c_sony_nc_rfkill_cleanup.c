
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int N_SONY_RFKILL ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 scalar_t__* sony_rfkill_devices ;

__attribute__((used)) static void sony_nc_rfkill_cleanup(void)
{
 int i;

 for (i = 0; i < N_SONY_RFKILL; i++) {
  if (sony_rfkill_devices[i]) {
   rfkill_unregister(sony_rfkill_devices[i]);
   rfkill_destroy(sony_rfkill_devices[i]);
  }
 }
}
