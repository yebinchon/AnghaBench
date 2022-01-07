
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ status; int busid_lock; int name; } ;


 int BUSID_SIZE ;
 scalar_t__ STUB_BUSID_ADDED ;
 scalar_t__ STUB_BUSID_OTHER ;
 scalar_t__ STUB_BUSID_REMOV ;
 TYPE_1__* busid_table ;
 int busid_table_lock ;
 int get_busid_idx (char*) ;
 int memset (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int del_match_busid(char *busid)
{
 int idx;
 int ret = -1;

 spin_lock(&busid_table_lock);
 idx = get_busid_idx(busid);
 if (idx < 0)
  goto out;


 ret = 0;

 spin_lock(&busid_table[idx].busid_lock);

 if (busid_table[idx].status == STUB_BUSID_OTHER)
  memset(busid_table[idx].name, 0, BUSID_SIZE);

 if ((busid_table[idx].status != STUB_BUSID_OTHER) &&
     (busid_table[idx].status != STUB_BUSID_ADDED))
  busid_table[idx].status = STUB_BUSID_REMOV;

 spin_unlock(&busid_table[idx].busid_lock);
out:
 spin_unlock(&busid_table_lock);

 return ret;
}
