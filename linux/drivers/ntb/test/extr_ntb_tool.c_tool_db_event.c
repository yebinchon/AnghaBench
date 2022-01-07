
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tool_ctx {int db_wq; TYPE_1__* ntb; } ;
struct TYPE_3__ {int dev; } ;


 int dev_dbg (int *,char*,int,int ,int ) ;
 int ntb_db_read (TYPE_1__*) ;
 int ntb_db_vector_mask (TYPE_1__*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void tool_db_event(void *ctx, int vec)
{
 struct tool_ctx *tc = ctx;
 u64 db_bits, db_mask;

 db_mask = ntb_db_vector_mask(tc->ntb, vec);
 db_bits = ntb_db_read(tc->ntb);

 dev_dbg(&tc->ntb->dev, "doorbell vec %d mask %#llx bits %#llx\n",
  vec, db_mask, db_bits);

 wake_up(&tc->db_wq);
}
