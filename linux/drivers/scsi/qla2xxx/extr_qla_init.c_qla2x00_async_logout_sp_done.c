
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* free ) (TYPE_1__*) ;TYPE_3__* fcport; } ;
typedef TYPE_1__ srb_t ;
struct TYPE_6__ {int flags; int login_gen; } ;


 int FCF_ASYNC_ACTIVE ;
 int FCF_ASYNC_SENT ;
 int qlt_logo_completion_handler (TYPE_3__*,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void qla2x00_async_logout_sp_done(srb_t *sp, int res)
{
 sp->fcport->flags &= ~(FCF_ASYNC_SENT | FCF_ASYNC_ACTIVE);
 sp->fcport->login_gen++;
 qlt_logo_completion_handler(sp->fcport, res);
 sp->free(sp);
}
