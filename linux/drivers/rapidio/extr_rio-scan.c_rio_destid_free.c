
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_net {scalar_t__ enum_data; } ;
struct rio_id_table {int lock; int table; scalar_t__ start; } ;


 int clear_bit (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void rio_destid_free(struct rio_net *net, u16 destid)
{
 struct rio_id_table *idtab = (struct rio_id_table *)net->enum_data;

 destid -= idtab->start;
 spin_lock(&idtab->lock);
 clear_bit(destid, idtab->table);
 spin_unlock(&idtab->lock);
}
