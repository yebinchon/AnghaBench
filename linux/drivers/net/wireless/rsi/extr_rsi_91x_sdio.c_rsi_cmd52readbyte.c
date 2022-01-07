
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mmc_command {int flags; int* resp; int arg; int opcode; } ;
struct mmc_card {int host; } ;
typedef int io_cmd ;


 int MMC_CMD_AC ;
 int MMC_RSP_R5 ;
 int SD_IO_RW_DIRECT ;
 int memset (struct mmc_command*,int ,int) ;
 int mmc_wait_for_cmd (int ,struct mmc_command*,int ) ;
 int rsi_sdio_set_cmd52_arg (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int rsi_cmd52readbyte(struct mmc_card *card,
        u32 address,
        u8 *byte)
{
 struct mmc_command io_cmd;
 u32 arg;
 int err;

 memset(&io_cmd, 0, sizeof(io_cmd));
 arg = rsi_sdio_set_cmd52_arg(0, 0, 0, address, 0);
 io_cmd.opcode = SD_IO_RW_DIRECT;
 io_cmd.arg = arg;
 io_cmd.flags = MMC_RSP_R5 | MMC_CMD_AC;

 err = mmc_wait_for_cmd(card->host, &io_cmd, 0);
 if ((!err) && (byte))
  *byte = io_cmd.resp[0] & 0xFF;
 return err;
}
