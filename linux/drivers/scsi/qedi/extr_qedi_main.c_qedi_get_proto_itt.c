
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qedi_ctx {int dbg_ctx; TYPE_1__* itt_map; } ;
struct TYPE_2__ {size_t itt; } ;


 int QEDI_INFO (int *,int ,char*,size_t,size_t) ;
 int QEDI_LOG_CONN ;

void qedi_get_proto_itt(struct qedi_ctx *qedi, u32 tid, u32 *proto_itt)
{
 *proto_itt = qedi->itt_map[tid].itt;
 QEDI_INFO(&qedi->dbg_ctx, QEDI_LOG_CONN,
    "Get itt map tid [0x%x with proto itt[0x%x]",
    tid, *proto_itt);
}
