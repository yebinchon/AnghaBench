
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa; } ;
struct bfa_bsg_port_cfg_s {int status; int param; } ;


 unsigned int IOCMD_PORT_CFG_ALPA ;
 unsigned int IOCMD_PORT_CFG_SPEED ;
 unsigned int IOCMD_PORT_CFG_TOPO ;
 unsigned int IOCMD_PORT_CLR_ALPA ;
 int bfa_fcport_cfg_hardalpa (int *,int ) ;
 int bfa_fcport_cfg_speed (int *,int ) ;
 int bfa_fcport_cfg_topology (int *,int ) ;
 int bfa_fcport_clr_hardalpa (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_set_port_cfg(struct bfad_s *bfad, void *iocmd, unsigned int v_cmd)
{
 struct bfa_bsg_port_cfg_s *cmd = (struct bfa_bsg_port_cfg_s *)iocmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (v_cmd == IOCMD_PORT_CFG_TOPO)
  cmd->status = bfa_fcport_cfg_topology(&bfad->bfa, cmd->param);
 else if (v_cmd == IOCMD_PORT_CFG_SPEED)
  cmd->status = bfa_fcport_cfg_speed(&bfad->bfa, cmd->param);
 else if (v_cmd == IOCMD_PORT_CFG_ALPA)
  cmd->status = bfa_fcport_cfg_hardalpa(&bfad->bfa, cmd->param);
 else if (v_cmd == IOCMD_PORT_CLR_ALPA)
  cmd->status = bfa_fcport_clr_hardalpa(&bfad->bfa);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
