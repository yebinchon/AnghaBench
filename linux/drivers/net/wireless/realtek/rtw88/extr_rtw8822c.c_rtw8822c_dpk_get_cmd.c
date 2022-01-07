
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ dpk_bw; } ;
struct TYPE_4__ {TYPE_1__ dpk_info; } ;
struct rtw_dev {TYPE_2__ dm_info; } ;


 scalar_t__ DPK_CHANNEL_WIDTH_80 ;





__attribute__((used)) static u16 rtw8822c_dpk_get_cmd(struct rtw_dev *rtwdev, u8 action, u8 path)
{
 u16 cmd;
 u8 bw = rtwdev->dm_info.dpk_info.dpk_bw == DPK_CHANNEL_WIDTH_80 ? 2 : 0;

 switch (action) {
 case 128:
  cmd = 0x14 + path;
  break;
 case 130:
  cmd = 0x16 + path + bw;
  break;
 case 129:
  cmd = 0x1a + path;
  break;
 case 131:
  cmd = 0x1c + path + bw;
  break;
 default:
  return 0;
 }

 return (cmd << 8) | 0x48;
}
