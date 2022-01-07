
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u64 ;
struct ntb_msit_peer {size_t num_irqs; int * msi_desc; int pidx; TYPE_1__* nm; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {TYPE_2__* ntb; } ;


 int EINVAL ;
 int dev_dbg (int *,char*,size_t,int ) ;
 int ntb_msi_peer_trigger (TYPE_2__*,int ,int *) ;

__attribute__((used)) static int ntb_msit_dbgfs_trigger(void *data, u64 idx)
{
 struct ntb_msit_peer *peer = data;

 if (idx >= peer->num_irqs)
  return -EINVAL;

 dev_dbg(&peer->nm->ntb->dev, "trigger irq %llu on peer %u\n",
  idx, peer->pidx);

 return ntb_msi_peer_trigger(peer->nm->ntb, peer->pidx,
        &peer->msi_desc[idx]);
}
