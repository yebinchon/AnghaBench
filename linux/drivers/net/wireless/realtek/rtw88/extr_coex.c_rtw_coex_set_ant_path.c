
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_coex_dm {int cur_ant_pos_type; } ;
struct rtw_coex_stat {int bt_disabled; } ;
struct rtw_coex {struct rtw_coex_dm dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_GNT_SET_HW_PTA ;
 int COEX_GNT_SET_SW_HIGH ;
 int COEX_GNT_SET_SW_LOW ;
 int COEX_SWITCH_CTRL_BY_BBSW ;
 int COEX_SWITCH_CTRL_BY_BT ;
 int COEX_SWITCH_CTRL_BY_PTA ;
 int COEX_SWITCH_CTRL_MAX ;
 int COEX_SWITCH_TO_BT ;
 int COEX_SWITCH_TO_MAX ;
 int COEX_SWITCH_TO_NOCARE ;
 int COEX_SWITCH_TO_WLA ;
 int COEX_SWITCH_TO_WLG ;
 int COEX_SWITCH_TO_WLG_BT ;
 int WARN (int,char*) ;
 int rtw_coex_check_rfk (struct rtw_dev*) ;
 int rtw_coex_coex_ctrl_owner (struct rtw_dev*,int) ;
 int rtw_coex_set_ant_switch (struct rtw_dev*,int,int) ;
 int rtw_coex_set_gnt_bt (struct rtw_dev*,int ) ;
 int rtw_coex_set_gnt_wl (struct rtw_dev*,int ) ;

__attribute__((used)) static void rtw_coex_set_ant_path(struct rtw_dev *rtwdev, bool force, u8 phase)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 u8 ctrl_type = COEX_SWITCH_CTRL_MAX;
 u8 pos_type = COEX_SWITCH_TO_MAX;

 if (!force && coex_dm->cur_ant_pos_type == phase)
  return;

 coex_dm->cur_ant_pos_type = phase;


 rtw_coex_check_rfk(rtwdev);

 switch (phase) {
 case 130:

  if (coex_stat->bt_disabled)
   rtw_coex_coex_ctrl_owner(rtwdev, 1);
  else
   rtw_coex_coex_ctrl_owner(rtwdev, 0);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_BT;
  break;
 case 131:
  if (coex_stat->bt_disabled) {

   rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_SW_LOW);


   rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_SW_HIGH);
  } else {

   rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_SW_HIGH);


   rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_SW_LOW);
  }


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_BT;
  break;
 case 128:

  rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_SW_LOW);


  rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_SW_HIGH);


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_WLG;
  break;
 case 129:

  rtw_coex_coex_ctrl_owner(rtwdev, 0);

  ctrl_type = COEX_SWITCH_CTRL_BY_BT;
  pos_type = COEX_SWITCH_TO_NOCARE;
  break;
 case 135:

  rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_HW_PTA);


  rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_HW_PTA);


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_PTA;
  pos_type = COEX_SWITCH_TO_NOCARE;
  break;
 case 132:

  rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_SW_HIGH);


  rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_SW_HIGH);


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_WLA;
  break;
 case 134:

  rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_SW_HIGH);


  rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_SW_HIGH);


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_WLG_BT;
  break;
 case 133:

  rtw_coex_set_gnt_bt(rtwdev, COEX_GNT_SET_HW_PTA);


  rtw_coex_set_gnt_wl(rtwdev, COEX_GNT_SET_HW_PTA);


  rtw_coex_coex_ctrl_owner(rtwdev, 1);

  ctrl_type = COEX_SWITCH_CTRL_BY_BBSW;
  pos_type = COEX_SWITCH_TO_WLG_BT;
  break;
 default:
  WARN(1, "unknown phase when setting antenna path\n");
  return;
 }

 if (ctrl_type < COEX_SWITCH_CTRL_MAX && pos_type < COEX_SWITCH_TO_MAX)
  rtw_coex_set_ant_switch(rtwdev, ctrl_type, pos_type);
}
