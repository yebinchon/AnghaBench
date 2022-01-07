
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ntb_msit_ctx {TYPE_1__* peers; int ntb; } ;
struct ntb_msi_desc {int dummy; } ;
typedef int peer_mask ;
struct TYPE_2__ {int num_irqs; struct ntb_msi_desc* msi_desc; } ;


 int BIT (int) ;
 int GFP_ATOMIC ;
 struct ntb_msi_desc* kcalloc (int,int,int ) ;
 int kfree (struct ntb_msi_desc*) ;
 int ntb_db_clear (int ,int) ;
 int ntb_db_read (int ) ;
 int ntb_msit_copy_peer_desc (struct ntb_msit_ctx*,int) ;
 int ntb_peer_spad_read (int ,int,int ) ;

__attribute__((used)) static void ntb_msit_db_event(void *ctx, int vec)
{
 struct ntb_msit_ctx *nm = ctx;
 struct ntb_msi_desc *desc;
 u64 peer_mask = ntb_db_read(nm->ntb);
 u32 irq_count;
 int peer;

 ntb_db_clear(nm->ntb, peer_mask);

 for (peer = 0; peer < sizeof(peer_mask) * 8; peer++) {
  if (!(peer_mask & BIT(peer)))
   continue;

  irq_count = ntb_peer_spad_read(nm->ntb, peer, 0);
  if (irq_count == -1)
   continue;

  desc = kcalloc(irq_count, sizeof(*desc), GFP_ATOMIC);
  if (!desc)
   continue;

  kfree(nm->peers[peer].msi_desc);
  nm->peers[peer].msi_desc = desc;
  nm->peers[peer].num_irqs = irq_count;

  ntb_msit_copy_peer_desc(nm, peer);
 }
}
