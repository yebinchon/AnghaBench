
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_net {scalar_t__ enum_data; } ;
struct rio_id_table {int max; int lock; scalar_t__ start; int table; } ;


 int RIO_INVALID_DESTID ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u16 rio_destid_alloc(struct rio_net *net)
{
 int destid;
 struct rio_id_table *idtab = (struct rio_id_table *)net->enum_data;

 spin_lock(&idtab->lock);
 destid = find_first_zero_bit(idtab->table, idtab->max);

 if (destid < idtab->max) {
  set_bit(destid, idtab->table);
  destid += idtab->start;
 } else
  destid = RIO_INVALID_DESTID;

 spin_unlock(&idtab->lock);
 return (u16)destid;
}
