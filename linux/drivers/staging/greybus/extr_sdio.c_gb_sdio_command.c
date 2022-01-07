
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mmc_data {int blksz; int blocks; } ;
struct mmc_command {int error; void** resp; int arg; int opcode; } ;
struct gb_sdio_host {int connection; int mmc; TYPE_1__* mrq; } ;
struct gb_sdio_command_response {int * resp; } ;
struct gb_sdio_command_request {int cmd_flags; int cmd_type; void* data_blksz; void* data_blocks; int cmd_arg; int cmd; int member_0; } ;
typedef int response ;
typedef int request ;
struct TYPE_2__ {struct mmc_data* data; } ;


 int EINVAL ;
 int GB_SDIO_CMD_AC ;
 int GB_SDIO_CMD_ADTC ;
 int GB_SDIO_CMD_BC ;
 int GB_SDIO_CMD_BCR ;
 int GB_SDIO_RSP_NONE ;
 int GB_SDIO_RSP_R1B ;
 int GB_SDIO_RSP_R1_R5_R6_R7 ;
 int GB_SDIO_RSP_R2 ;
 int GB_SDIO_RSP_R3_R4 ;
 int GB_SDIO_TYPE_COMMAND ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dev_err (int ,char*,int) ;
 int gb_operation_sync (int ,int ,struct gb_sdio_command_request*,int,struct gb_sdio_command_response*,int) ;
 void* le32_to_cpu (int ) ;
 int mmc_cmd_type (struct mmc_command*) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;

__attribute__((used)) static int gb_sdio_command(struct gb_sdio_host *host, struct mmc_command *cmd)
{
 struct gb_sdio_command_request request = {0};
 struct gb_sdio_command_response response;
 struct mmc_data *data = host->mrq->data;
 u8 cmd_flags;
 u8 cmd_type;
 int i;
 int ret;

 switch (mmc_resp_type(cmd)) {
 case 132:
  cmd_flags = GB_SDIO_RSP_NONE;
  break;
 case 131:
  cmd_flags = GB_SDIO_RSP_R1_R5_R6_R7;
  break;
 case 130:
  cmd_flags = GB_SDIO_RSP_R1B;
  break;
 case 129:
  cmd_flags = GB_SDIO_RSP_R2;
  break;
 case 128:
  cmd_flags = GB_SDIO_RSP_R3_R4;
  break;
 default:
  dev_err(mmc_dev(host->mmc), "cmd flag invalid 0x%04x\n",
   mmc_resp_type(cmd));
  ret = -EINVAL;
  goto out;
 }

 switch (mmc_cmd_type(cmd)) {
 case 134:
  cmd_type = GB_SDIO_CMD_BC;
  break;
 case 133:
  cmd_type = GB_SDIO_CMD_BCR;
  break;
 case 136:
  cmd_type = GB_SDIO_CMD_AC;
  break;
 case 135:
  cmd_type = GB_SDIO_CMD_ADTC;
  break;
 default:
  dev_err(mmc_dev(host->mmc), "cmd type invalid 0x%04x\n",
   mmc_cmd_type(cmd));
  ret = -EINVAL;
  goto out;
 }

 request.cmd = cmd->opcode;
 request.cmd_flags = cmd_flags;
 request.cmd_type = cmd_type;
 request.cmd_arg = cpu_to_le32(cmd->arg);

 if (data) {
  request.data_blocks = cpu_to_le16(data->blocks);
  request.data_blksz = cpu_to_le16(data->blksz);
 }

 ret = gb_operation_sync(host->connection, GB_SDIO_TYPE_COMMAND,
    &request, sizeof(request), &response,
    sizeof(response));
 if (ret < 0)
  goto out;


 if (cmd_flags == GB_SDIO_RSP_NONE)
  goto out;


 if (cmd_flags & GB_SDIO_RSP_R2)
  for (i = 0; i < 4; i++)
   cmd->resp[i] = le32_to_cpu(response.resp[i]);
 else
  cmd->resp[0] = le32_to_cpu(response.resp[0]);

out:
 cmd->error = ret;
 return ret;
}
