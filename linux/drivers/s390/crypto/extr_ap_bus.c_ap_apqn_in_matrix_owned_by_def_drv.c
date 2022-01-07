
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* apm; unsigned long* aqm; } ;


 int AP_DEVICES ;
 int AP_DOMAINS ;
 TYPE_1__ ap_perms ;
 int ap_perms_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit_inv (int,unsigned long*) ;

int ap_apqn_in_matrix_owned_by_def_drv(unsigned long *apm,
           unsigned long *aqm)
{
 int card, queue, rc = 0;

 mutex_lock(&ap_perms_mutex);

 for (card = 0; !rc && card < AP_DEVICES; card++)
  if (test_bit_inv(card, apm) &&
      test_bit_inv(card, ap_perms.apm))
   for (queue = 0; !rc && queue < AP_DOMAINS; queue++)
    if (test_bit_inv(queue, aqm) &&
        test_bit_inv(queue, ap_perms.aqm))
     rc = 1;

 mutex_unlock(&ap_perms_mutex);

 return rc;
}
