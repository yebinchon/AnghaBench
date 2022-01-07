
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ctx {TYPE_1__* lport; } ;
struct TYPE_2__ {int * vport; } ;



inline bool qedf_is_vport(struct qedf_ctx *qedf)
{
 return qedf->lport->vport != ((void*)0);
}
