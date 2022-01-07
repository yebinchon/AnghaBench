
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qedi_portid_tbl {int max; int next; int lock; scalar_t__ start; int table; } ;


 int QEDI_LOCAL_PORT_INVALID ;
 int find_first_zero_bit (int ,int) ;
 int find_next_zero_bit (int ,int,int) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

u16 qedi_alloc_new_id(struct qedi_portid_tbl *id_tbl)
{
 u16 id;

 spin_lock(&id_tbl->lock);
 id = find_next_zero_bit(id_tbl->table, id_tbl->max, id_tbl->next);
 if (id >= id_tbl->max) {
  id = QEDI_LOCAL_PORT_INVALID;
  if (id_tbl->next != 0) {
   id = find_first_zero_bit(id_tbl->table, id_tbl->next);
   if (id >= id_tbl->next)
    id = QEDI_LOCAL_PORT_INVALID;
  }
 }

 if (id < id_tbl->max) {
  set_bit(id, id_tbl->table);
  id_tbl->next = (id + 1) & (id_tbl->max - 1);
  id += id_tbl->start;
 }

 spin_unlock(&id_tbl->lock);

 return id;
}
