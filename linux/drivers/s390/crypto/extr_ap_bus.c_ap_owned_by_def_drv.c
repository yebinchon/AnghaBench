
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aqm; int apm; } ;


 int AP_DEVICES ;
 int AP_DOMAINS ;
 int EINVAL ;
 TYPE_1__ ap_perms ;
 int ap_perms_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit_inv (int,int ) ;

int ap_owned_by_def_drv(int card, int queue)
{
 int rc = 0;

 if (card < 0 || card >= AP_DEVICES || queue < 0 || queue >= AP_DOMAINS)
  return -EINVAL;

 mutex_lock(&ap_perms_mutex);

 if (test_bit_inv(card, ap_perms.apm)
     && test_bit_inv(queue, ap_perms.aqm))
  rc = 1;

 mutex_unlock(&ap_perms_mutex);

 return rc;
}
