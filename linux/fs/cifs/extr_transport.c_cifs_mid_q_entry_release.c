
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int refcount; } ;


 int GlobalMid_Lock ;
 int _cifs_mid_q_entry_release ;
 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cifs_mid_q_entry_release(struct mid_q_entry *midEntry)
{
 spin_lock(&GlobalMid_Lock);
 kref_put(&midEntry->refcount, _cifs_mid_q_entry_release);
 spin_unlock(&GlobalMid_Lock);
}
