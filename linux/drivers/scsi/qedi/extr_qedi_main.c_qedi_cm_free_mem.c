
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int lcl_port_tbl; int * ep_tbl; } ;


 int kfree (int *) ;
 int qedi_free_id_tbl (int *) ;

__attribute__((used)) static void qedi_cm_free_mem(struct qedi_ctx *qedi)
{
 kfree(qedi->ep_tbl);
 qedi->ep_tbl = ((void*)0);
 qedi_free_id_tbl(&qedi->lcl_port_tbl);
}
