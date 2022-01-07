
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int release_num; int minor; int major; } ;
struct rsi_common {TYPE_1__* priv; int oper_mode; TYPE_2__ lmac_ver; } ;
struct TYPE_3__ {int fw_file_name; } ;


 int ERR_ZONE ;
 int opmode_str (int ) ;
 int rsi_dbg (int ,char*,...) ;

void rsi_print_version(struct rsi_common *common)
{
 rsi_dbg(ERR_ZONE, "================================================\n");
 rsi_dbg(ERR_ZONE, "================ RSI Version Info ==============\n");
 rsi_dbg(ERR_ZONE, "================================================\n");
 rsi_dbg(ERR_ZONE, "FW Version\t: %d.%d.%d\n",
  common->lmac_ver.major, common->lmac_ver.minor,
  common->lmac_ver.release_num);
 rsi_dbg(ERR_ZONE, "Operating mode\t: %d [%s]",
  common->oper_mode, opmode_str(common->oper_mode));
 rsi_dbg(ERR_ZONE, "Firmware file\t: %s", common->priv->fw_file_name);
 rsi_dbg(ERR_ZONE, "================================================\n");
}
