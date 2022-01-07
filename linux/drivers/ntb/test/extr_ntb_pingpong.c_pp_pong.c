
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct pp_ctx {int timer; int in_db; TYPE_1__* ntb; int count; } ;
struct TYPE_7__ {int dev; } ;


 int HRTIMER_MODE_REL ;
 int atomic_inc (int *) ;
 int delay_ms ;
 int dev_dbg (int *,char*,int,int,int ) ;
 int hrtimer_start (int *,int ,int ) ;
 int ms_to_ktime (int ) ;
 int ntb_db_clear (TYPE_1__*,int ) ;
 int ntb_db_set_mask (TYPE_1__*,int ) ;
 int ntb_msg_clear_sts (TYPE_1__*,int) ;
 int ntb_msg_read (TYPE_1__*,int*,int ) ;
 int ntb_peer_port_number (TYPE_1__*,int) ;
 int ntb_spad_read (TYPE_1__*,int ) ;

__attribute__((used)) static void pp_pong(struct pp_ctx *pp)
{
 u32 msg_data = -1, spad_data = -1;
 int pidx = 0;


 spad_data = ntb_spad_read(pp->ntb, 0);
 msg_data = ntb_msg_read(pp->ntb, &pidx, 0);
 ntb_msg_clear_sts(pp->ntb, -1);






 dev_dbg(&pp->ntb->dev, "Pong spad %#x, msg %#x (port %d)\n",
  spad_data, msg_data, ntb_peer_port_number(pp->ntb, pidx));

 atomic_inc(&pp->count);

 ntb_db_set_mask(pp->ntb, pp->in_db);
 ntb_db_clear(pp->ntb, pp->in_db);

 hrtimer_start(&pp->timer, ms_to_ktime(delay_ms), HRTIMER_MODE_REL);
}
