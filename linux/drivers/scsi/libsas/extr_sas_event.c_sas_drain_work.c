
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int drain_mutex; int state; } ;


 int SAS_HA_REGISTERED ;
 int __sas_drain_work (struct sas_ha_struct*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int sas_drain_work(struct sas_ha_struct *ha)
{
 int err;

 err = mutex_lock_interruptible(&ha->drain_mutex);
 if (err)
  return err;
 if (test_bit(SAS_HA_REGISTERED, &ha->state))
  __sas_drain_work(ha);
 mutex_unlock(&ha->drain_mutex);

 return 0;
}
