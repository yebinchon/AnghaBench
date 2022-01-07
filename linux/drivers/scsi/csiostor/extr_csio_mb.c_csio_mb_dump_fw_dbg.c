
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int y; int x; int line; int filename_0_7; } ;
struct TYPE_4__ {int dprtstrparam3; int dprtstrparam2; int dprtstrparam1; int dprtstrparam0; int dprtstridx; } ;
struct TYPE_6__ {TYPE_2__ assert; TYPE_1__ prt; } ;
struct fw_debug_cmd {TYPE_3__ u; int op_type; } ;
struct csio_hw {int dummy; } ;
typedef int __be64 ;


 int FW_DEBUG_CMD_TYPE_G (int ) ;
 int csio_fatal (struct csio_hw*,char*,int ,int ,int ,int ) ;
 int csio_info (struct csio_hw*,char*,...) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static void
csio_mb_dump_fw_dbg(struct csio_hw *hw, __be64 *cmd)
{
 struct fw_debug_cmd *dbg = (struct fw_debug_cmd *)cmd;

 if ((FW_DEBUG_CMD_TYPE_G(ntohl(dbg->op_type))) == 1) {
  csio_info(hw, "FW print message:\n");
  csio_info(hw, "\tdebug->dprtstridx = %d\n",
       ntohs(dbg->u.prt.dprtstridx));
  csio_info(hw, "\tdebug->dprtstrparam0 = 0x%x\n",
       ntohl(dbg->u.prt.dprtstrparam0));
  csio_info(hw, "\tdebug->dprtstrparam1 = 0x%x\n",
       ntohl(dbg->u.prt.dprtstrparam1));
  csio_info(hw, "\tdebug->dprtstrparam2 = 0x%x\n",
       ntohl(dbg->u.prt.dprtstrparam2));
  csio_info(hw, "\tdebug->dprtstrparam3 = 0x%x\n",
       ntohl(dbg->u.prt.dprtstrparam3));
 } else {

  csio_fatal(hw, "FW assertion at %.16s:%u, val0 %#x, val1 %#x\n",
       dbg->u.assert.filename_0_7,
       ntohl(dbg->u.assert.line),
       ntohl(dbg->u.assert.x),
       ntohl(dbg->u.assert.y));
 }
}
