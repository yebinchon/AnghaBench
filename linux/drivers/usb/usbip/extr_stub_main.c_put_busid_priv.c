
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_id_priv {int busid_lock; } ;


 int spin_unlock (int *) ;

void put_busid_priv(struct bus_id_priv *bid)
{
 if (bid)
  spin_unlock(&bid->busid_lock);
}
