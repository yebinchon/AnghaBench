
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; int busid_lock; int * name; } ;


 int BUSID_SIZE ;
 int MAX_BUSID ;
 scalar_t__ STUB_BUSID_ADDED ;
 scalar_t__ STUB_BUSID_ALLOC ;
 scalar_t__ STUB_BUSID_REMOV ;
 TYPE_1__* busid_table ;
 int busid_table_lock ;
 scalar_t__ get_busid_idx (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlcpy (int *,char*,int ) ;

__attribute__((used)) static int add_match_busid(char *busid)
{
 int i;
 int ret = -1;

 spin_lock(&busid_table_lock);

 if (get_busid_idx(busid) >= 0) {
  ret = 0;
  goto out;
 }

 for (i = 0; i < MAX_BUSID; i++) {
  spin_lock(&busid_table[i].busid_lock);
  if (!busid_table[i].name[0]) {
   strlcpy(busid_table[i].name, busid, BUSID_SIZE);
   if ((busid_table[i].status != STUB_BUSID_ALLOC) &&
       (busid_table[i].status != STUB_BUSID_REMOV))
    busid_table[i].status = STUB_BUSID_ADDED;
   ret = 0;
   spin_unlock(&busid_table[i].busid_lock);
   break;
  }
  spin_unlock(&busid_table[i].busid_lock);
 }

out:
 spin_unlock(&busid_table_lock);

 return ret;
}
