
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int mid_flags; int qhead; } ;


 int DeleteMidQEntry (struct mid_q_entry*) ;
 int GlobalMid_Lock ;
 int MID_DELETED ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
cifs_delete_mid(struct mid_q_entry *mid)
{
 spin_lock(&GlobalMid_Lock);
 if (!(mid->mid_flags & MID_DELETED)) {
  list_del_init(&mid->qhead);
  mid->mid_flags |= MID_DELETED;
 }
 spin_unlock(&GlobalMid_Lock);

 DeleteMidQEntry(mid);
}
