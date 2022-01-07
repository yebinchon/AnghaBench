
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_net {scalar_t__ enum_data; } ;
struct rio_id_table {int max; int lock; scalar_t__ start; int table; } ;


 int RIO_INVALID_DESTID ;
 int find_next_bit (int ,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static u16 rio_destid_next(struct rio_net *net, u16 from)
{
 int destid;
 struct rio_id_table *idtab = (struct rio_id_table *)net->enum_data;

 spin_lock(&idtab->lock);
 destid = find_next_bit(idtab->table, idtab->max, from);
 if (destid >= idtab->max)
  destid = RIO_INVALID_DESTID;
 else
  destid += idtab->start;
 spin_unlock(&idtab->lock);
 return (u16)destid;
}
