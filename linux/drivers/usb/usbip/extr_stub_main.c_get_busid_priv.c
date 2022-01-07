
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_id_priv {int busid_lock; } ;


 struct bus_id_priv* busid_table ;
 int busid_table_lock ;
 int get_busid_idx (char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct bus_id_priv *get_busid_priv(const char *busid)
{
 int idx;
 struct bus_id_priv *bid = ((void*)0);

 spin_lock(&busid_table_lock);
 idx = get_busid_idx(busid);
 if (idx >= 0) {
  bid = &(busid_table[idx]);

  spin_lock(&bid->busid_lock);
 }
 spin_unlock(&busid_table_lock);

 return bid;
}
