
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int busid_lock; scalar_t__* name; } ;


 int BUSID_SIZE ;
 int MAX_BUSID ;
 TYPE_1__* busid_table ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strncmp (scalar_t__*,char const*,int ) ;

__attribute__((used)) static int get_busid_idx(const char *busid)
{
 int i;
 int idx = -1;

 for (i = 0; i < MAX_BUSID; i++) {
  spin_lock(&busid_table[i].busid_lock);
  if (busid_table[i].name[0])
   if (!strncmp(busid_table[i].name, busid, BUSID_SIZE)) {
    idx = i;
    spin_unlock(&busid_table[i].busid_lock);
    break;
   }
  spin_unlock(&busid_table[i].busid_lock);
 }
 return idx;
}
