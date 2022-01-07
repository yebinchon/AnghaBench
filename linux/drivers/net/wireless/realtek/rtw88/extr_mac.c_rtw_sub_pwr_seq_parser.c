
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtw_pwr_seq_cmd {int cmd; int intf_mask; int cut_mask; int mask; int value; int offset; int base; } ;
struct rtw_dev {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int RTW_PWR_ADDR_SDIO ;

 int RTW_PWR_CMD_END ;



 int RTW_PWR_DELAY_US ;
 int SDIO_LOCAL_OFFSET ;
 int mdelay (int ) ;
 int rtw_pwr_cmd_polling (struct rtw_dev*,struct rtw_pwr_seq_cmd*) ;
 int rtw_read8 (struct rtw_dev*,int ) ;
 int rtw_write8 (struct rtw_dev*,int ,int) ;
 int udelay (int ) ;

__attribute__((used)) static int rtw_sub_pwr_seq_parser(struct rtw_dev *rtwdev, u8 intf_mask,
      u8 cut_mask, struct rtw_pwr_seq_cmd *cmd)
{
 struct rtw_pwr_seq_cmd *cur_cmd;
 u32 offset;
 u8 value;

 for (cur_cmd = cmd; cur_cmd->cmd != RTW_PWR_CMD_END; cur_cmd++) {
  if (!(cur_cmd->intf_mask & intf_mask) ||
      !(cur_cmd->cut_mask & cut_mask))
   continue;

  switch (cur_cmd->cmd) {
  case 128:
   offset = cur_cmd->offset;

   if (cur_cmd->base == RTW_PWR_ADDR_SDIO)
    offset |= SDIO_LOCAL_OFFSET;

   value = rtw_read8(rtwdev, offset);
   value &= ~cur_cmd->mask;
   value |= (cur_cmd->value & cur_cmd->mask);
   rtw_write8(rtwdev, offset, value);
   break;
  case 130:
   if (rtw_pwr_cmd_polling(rtwdev, cur_cmd))
    return -EBUSY;
   break;
  case 131:
   if (cur_cmd->value == RTW_PWR_DELAY_US)
    udelay(cur_cmd->offset);
   else
    mdelay(cur_cmd->offset);
   break;
  case 129:
   break;
  default:
   return -EINVAL;
  }
 }

 return 0;
}
