
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct pp_ctx {int lock; int in_db; TYPE_1__* ntb; int out_db; int out_pidx; int count; } ;
struct TYPE_6__ {int dev; } ;


 int atomic_read (int *) ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int ntb_db_clear_mask (TYPE_1__*,int ) ;
 int ntb_peer_db_set (TYPE_1__*,int ) ;
 int ntb_peer_msg_write (TYPE_1__*,int ,int ,int ) ;
 int ntb_peer_port_number (TYPE_1__*,int ) ;
 int ntb_peer_spad_write (TYPE_1__*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void pp_ping(struct pp_ctx *pp)
{
 u32 count;

 count = atomic_read(&pp->count);

 spin_lock(&pp->lock);
 ntb_peer_spad_write(pp->ntb, pp->out_pidx, 0, count);
 ntb_peer_msg_write(pp->ntb, pp->out_pidx, 0, count);

 dev_dbg(&pp->ntb->dev, "Ping port %d spad %#x, msg %#x\n",
  ntb_peer_port_number(pp->ntb, pp->out_pidx), count, count);

 ntb_peer_db_set(pp->ntb, pp->out_db);
 ntb_db_clear_mask(pp->ntb, pp->in_db);
 spin_unlock(&pp->lock);
}
