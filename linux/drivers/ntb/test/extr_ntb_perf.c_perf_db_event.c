
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct perf_ctx {TYPE_1__* ntb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int,int ,int ) ;
 int ntb_db_read (TYPE_1__*) ;
 int ntb_db_vector_mask (TYPE_1__*,int) ;
 int perf_cmd_recv (struct perf_ctx*) ;

__attribute__((used)) static void perf_db_event(void *ctx, int vec)
{
 struct perf_ctx *perf = ctx;

 dev_dbg(&perf->ntb->dev, "DB vec %d mask %#llx bits %#llx\n", vec,
  ntb_db_vector_mask(perf->ntb, vec), ntb_db_read(perf->ntb));


 (void)perf_cmd_recv(perf);
}
