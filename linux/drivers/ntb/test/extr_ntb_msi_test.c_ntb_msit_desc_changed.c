
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ntb_msit_ctx {TYPE_3__* ntb; TYPE_2__* isr_ctx; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_6__ {int data; int addr_offset; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;


 int BIT (int ) ;
 int dev_dbg (int *,char*) ;
 int ntb_peer_db_set (TYPE_3__*,int ) ;
 int ntb_port_number (TYPE_3__*) ;
 int ntb_spad_write (TYPE_3__*,int,int ) ;
 int num_irqs ;

__attribute__((used)) static void ntb_msit_desc_changed(void *ctx)
{
 struct ntb_msit_ctx *nm = ctx;
 int i;

 dev_dbg(&nm->ntb->dev, "MSI Descriptors Changed\n");

 for (i = 0; i < num_irqs; i++) {
  ntb_spad_write(nm->ntb, 2 * i + 1,
          nm->isr_ctx[i].desc.addr_offset);
  ntb_spad_write(nm->ntb, 2 * i + 2,
          nm->isr_ctx[i].desc.data);
 }

 ntb_peer_db_set(nm->ntb, BIT(ntb_port_number(nm->ntb)));
}
