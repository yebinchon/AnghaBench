
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_net {scalar_t__ enum_data; } ;
struct rio_id_table {int lock; int table; scalar_t__ start; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int ) ;

__attribute__((used)) static int rio_destid_reserve(struct rio_net *net, u16 destid)
{
 int oldbit;
 struct rio_id_table *idtab = (struct rio_id_table *)net->enum_data;

 destid -= idtab->start;
 spin_lock(&idtab->lock);
 oldbit = test_and_set_bit(destid, idtab->table);
 spin_unlock(&idtab->lock);
 return oldbit;
}
