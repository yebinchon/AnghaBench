
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct mbx_24xx_entry {int * mb; int handle; int entry_type; } ;
struct TYPE_7__ {int * out_mb; } ;
struct TYPE_8__ {TYPE_1__ mbx; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ iocb_cmd; } ;
struct TYPE_11__ {TYPE_4__ u; int handle; } ;
typedef TYPE_5__ srb_t ;


 int ARRAY_SIZE (int *) ;
 int MBX_IOCB_TYPE ;
 int cpu_to_le16 (int ) ;
 int min (int ,int ) ;

__attribute__((used)) static void
qla2x00_mb_iocb(srb_t *sp, struct mbx_24xx_entry *mbx)
{
 int i, sz;

 mbx->entry_type = MBX_IOCB_TYPE;
 mbx->handle = sp->handle;
 sz = min(ARRAY_SIZE(mbx->mb), ARRAY_SIZE(sp->u.iocb_cmd.u.mbx.out_mb));

 for (i = 0; i < sz; i++)
  mbx->mb[i] = cpu_to_le16(sp->u.iocb_cmd.u.mbx.out_mb[i]);
}
