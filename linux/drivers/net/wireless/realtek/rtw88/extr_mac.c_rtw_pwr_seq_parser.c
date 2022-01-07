
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct rtw_pwr_seq_cmd {int dummy; } ;
struct TYPE_2__ {int cut_version; } ;
struct rtw_dev {TYPE_1__ hal; } ;


 int BIT (int) ;
 int EBUSY ;
 int EINVAL ;


 int cut_version_to_mask (int ) ;
 int rtw_hci_type (struct rtw_dev*) ;
 int rtw_sub_pwr_seq_parser (struct rtw_dev*,int ,int ,struct rtw_pwr_seq_cmd*) ;

__attribute__((used)) static int rtw_pwr_seq_parser(struct rtw_dev *rtwdev,
         struct rtw_pwr_seq_cmd **cmd_seq)
{
 u8 cut_mask;
 u8 intf_mask;
 u8 cut;
 u32 idx = 0;
 struct rtw_pwr_seq_cmd *cmd;
 int ret;

 cut = rtwdev->hal.cut_version;
 cut_mask = cut_version_to_mask(cut);
 switch (rtw_hci_type(rtwdev)) {
 case 129:
  intf_mask = BIT(2);
  break;
 case 128:
  intf_mask = BIT(1);
  break;
 default:
  return -EINVAL;
 }

 do {
  cmd = cmd_seq[idx];
  if (!cmd)
   break;

  ret = rtw_sub_pwr_seq_parser(rtwdev, intf_mask, cut_mask, cmd);
  if (ret)
   return -EBUSY;

  idx++;
 } while (1);

 return 0;
}
