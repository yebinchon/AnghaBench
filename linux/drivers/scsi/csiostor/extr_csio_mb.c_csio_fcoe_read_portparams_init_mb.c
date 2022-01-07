
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int nstats_port; int port_valid_ix; } ;
struct TYPE_4__ {TYPE_1__ ctl; } ;
struct fw_fcoe_stats_cmd {TYPE_2__ u; void* free_to_len16; void* op_to_flowid; } ;
struct fw_fcoe_port_cmd_params {int idx; int portid; int nstats; } ;
struct csio_mb {int mb_size; scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_fcoe_stats_cmd*,int ,struct csio_hw*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int CSIO_MAX_MB_SIZE ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_FCOE_STATS_CMD ;
 int FW_FCOE_STATS_CMD_IX (int ) ;
 int FW_FCOE_STATS_CMD_NSTATS (int ) ;
 int FW_FCOE_STATS_CMD_PORT (int ) ;
 int FW_FCOE_STATS_CMD_PORT_VALID ;
 void* htonl (int) ;

void
csio_fcoe_read_portparams_init_mb(struct csio_hw *hw, struct csio_mb *mbp,
    uint32_t mb_tmo,
    struct fw_fcoe_port_cmd_params *portparams,
    void (*cbfn)(struct csio_hw *,
          struct csio_mb *))
{
 struct fw_fcoe_stats_cmd *cmdp = (struct fw_fcoe_stats_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, mb_tmo, hw, cbfn, 1);
 mbp->mb_size = 64;

 cmdp->op_to_flowid = htonl(FW_CMD_OP_V(FW_FCOE_STATS_CMD) |
       FW_CMD_REQUEST_F | FW_CMD_READ_F);
 cmdp->free_to_len16 = htonl(FW_CMD_LEN16_V(CSIO_MAX_MB_SIZE/16));

 cmdp->u.ctl.nstats_port = FW_FCOE_STATS_CMD_NSTATS(portparams->nstats) |
      FW_FCOE_STATS_CMD_PORT(portparams->portid);

 cmdp->u.ctl.port_valid_ix = FW_FCOE_STATS_CMD_IX(portparams->idx) |
        FW_FCOE_STATS_CMD_PORT_VALID;

}
