
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_4__ {int dbg_fwsave_once; } ;
struct TYPE_5__ {TYPE_1__ ioc; } ;
struct bfad_s {int trcmod; TYPE_3__ plog_buf; int bfad_lock; TYPE_2__ bfa; } ;
struct bfa_bsg_gen_s {int status; } ;


 int BFA_STATUS_OK ;
 int BFA_TRUE ;
 unsigned int IOCMD_DEBUG_FW_STATE_CLR ;
 unsigned int IOCMD_DEBUG_PORTLOG_CLR ;
 unsigned int IOCMD_DEBUG_START_DTRC ;
 unsigned int IOCMD_DEBUG_STOP_DTRC ;
 int bfa_trc_init (int ) ;
 int bfa_trc_stop (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_debug_ctl(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 unsigned long flags;

 if (v_cmd == IOCMD_DEBUG_FW_STATE_CLR) {
  spin_lock_irqsave(&bfad->bfad_lock, flags);
  bfad->bfa.ioc.dbg_fwsave_once = BFA_TRUE;
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 } else if (v_cmd == IOCMD_DEBUG_PORTLOG_CLR)
  bfad->plog_buf.head = bfad->plog_buf.tail = 0;
 else if (v_cmd == IOCMD_DEBUG_START_DTRC)
  bfa_trc_init(bfad->trcmod);
 else if (v_cmd == IOCMD_DEBUG_STOP_DTRC)
  bfa_trc_stop(bfad->trcmod);

 iocmd->status = BFA_STATUS_OK;
 return 0;
}
