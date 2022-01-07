
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_ISC ;
 int WARN_ON (int) ;
 int ctl_clear_bit (int,int) ;
 int isc_ref_lock ;
 int* isc_refs ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void isc_unregister(unsigned int isc)
{
 spin_lock(&isc_ref_lock);

 if (isc > MAX_ISC || isc_refs[isc] == 0) {
  WARN_ON(1);
  goto out_unlock;
 }
 if (isc_refs[isc] == 1)
  ctl_clear_bit(6, 31 - isc);
 isc_refs[isc]--;
out_unlock:
 spin_unlock(&isc_ref_lock);
}
