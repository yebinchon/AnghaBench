
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct msg_anybus_init {int op_mode; int wd_val; int notif_config; int output_total_len; int output_dpram_len; int output_io_len; int input_total_len; int input_dpram_len; int input_io_len; } ;
struct anybuss_memcfg {int input_io; int input_dpram; int input_total; int output_io; int output_dpram; int output_total; int offl_mode; } ;
struct anybuss_host {int dummy; } ;
struct anybuss_client {struct anybuss_host* host; } ;
typedef int msg ;





 int CMD_ANYBUS_INIT ;
 int CMD_START_INIT ;
 int EINVAL ;
 int OP_MODE_CD ;
 int OP_MODE_FBFC ;
 int OP_MODE_FBS ;
 int _anybus_mbox_cmd (struct anybuss_host*,int ,int,struct msg_anybus_init*,int,int *,int ,int *,int ) ;
 int cpu_to_be16 (int) ;

int anybuss_start_init(struct anybuss_client *client,
         const struct anybuss_memcfg *cfg)
{
 int ret;
 u16 op_mode;
 struct anybuss_host *cd = client->host;
 struct msg_anybus_init msg = {
  .input_io_len = cpu_to_be16(cfg->input_io),
  .input_dpram_len = cpu_to_be16(cfg->input_dpram),
  .input_total_len = cpu_to_be16(cfg->input_total),
  .output_io_len = cpu_to_be16(cfg->output_io),
  .output_dpram_len = cpu_to_be16(cfg->output_dpram),
  .output_total_len = cpu_to_be16(cfg->output_total),
  .notif_config = cpu_to_be16(0x000F),
  .wd_val = cpu_to_be16(0),
 };

 switch (cfg->offl_mode) {
 case 130:
  op_mode = 0;
  break;
 case 129:
  op_mode = OP_MODE_FBFC;
  break;
 case 128:
  op_mode = OP_MODE_FBS;
  break;
 default:
  return -EINVAL;
 }
 msg.op_mode = cpu_to_be16(op_mode | OP_MODE_CD);
 ret = _anybus_mbox_cmd(cd, CMD_START_INIT, 0, ((void*)0), 0,
          ((void*)0), 0, ((void*)0), 0);
 if (ret)
  return ret;
 return _anybus_mbox_cmd(cd, CMD_ANYBUS_INIT, 0,
   &msg, sizeof(msg), ((void*)0), 0, ((void*)0), 0);
}
