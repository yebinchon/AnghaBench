
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int COEX_IPS_LEAVE ;
 int rtw_coex_ips_notify (struct rtw_dev*,int ) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_ips_pwr_up (struct rtw_dev*) ;
 int rtw_iterate_vifs_atomic (struct rtw_dev*,int ,struct rtw_dev*) ;
 int rtw_restore_port_cfg_iter ;

int rtw_leave_ips(struct rtw_dev *rtwdev)
{
 int ret;

 ret = rtw_ips_pwr_up(rtwdev);
 if (ret) {
  rtw_err(rtwdev, "failed to leave ips state\n");
  return ret;
 }

 rtw_iterate_vifs_atomic(rtwdev, rtw_restore_port_cfg_iter, rtwdev);

 rtw_coex_ips_notify(rtwdev, COEX_IPS_LEAVE);

 return 0;
}
