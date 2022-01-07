
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qedi_portid_tbl {scalar_t__ start; scalar_t__ max; int table; } ;


 scalar_t__ QEDI_LOCAL_PORT_INVALID ;
 int clear_bit (scalar_t__,int ) ;

void qedi_free_id(struct qedi_portid_tbl *id_tbl, u16 id)
{
 if (id == QEDI_LOCAL_PORT_INVALID)
  return;

 id -= id_tbl->start;
 if (id >= id_tbl->max)
  return;

 clear_bit(id, id_tbl->table);
}
