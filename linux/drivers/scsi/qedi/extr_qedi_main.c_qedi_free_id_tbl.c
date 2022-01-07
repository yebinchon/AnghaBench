
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_portid_tbl {int * table; } ;


 int kfree (int *) ;

__attribute__((used)) static void qedi_free_id_tbl(struct qedi_portid_tbl *id_tbl)
{
 kfree(id_tbl->table);
 id_tbl->table = ((void*)0);
}
