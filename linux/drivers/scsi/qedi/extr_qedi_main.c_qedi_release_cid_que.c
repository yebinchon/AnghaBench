
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * conn_cid_tbl; int * cid_que_base; } ;
struct qedi_ctx {TYPE_1__ cid_que; } ;


 int kfree (int *) ;

__attribute__((used)) static void qedi_release_cid_que(struct qedi_ctx *qedi)
{
 kfree(qedi->cid_que.cid_que_base);
 qedi->cid_que.cid_que_base = ((void*)0);

 kfree(qedi->cid_que.conn_cid_tbl);
 qedi->cid_que.conn_cid_tbl = ((void*)0);
}
