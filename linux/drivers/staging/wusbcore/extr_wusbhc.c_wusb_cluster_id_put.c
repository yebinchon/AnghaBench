
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int BUG_ON (int) ;
 scalar_t__ CLUSTER_IDS ;
 int WARN_ON (int) ;
 int clear_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (scalar_t__,int ) ;
 int wusb_cluster_id_table ;
 int wusb_cluster_ids_lock ;

void wusb_cluster_id_put(u8 id)
{
 id = 0xff - id;
 BUG_ON(id >= CLUSTER_IDS);
 spin_lock(&wusb_cluster_ids_lock);
 WARN_ON(!test_bit(id, wusb_cluster_id_table));
 clear_bit(id, wusb_cluster_id_table);
 spin_unlock(&wusb_cluster_ids_lock);
}
