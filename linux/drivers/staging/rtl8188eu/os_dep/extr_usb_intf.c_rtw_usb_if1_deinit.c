
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct adapter {int hw_init_completed; int pmondev; struct mlme_priv mlmepriv; struct net_device* pnetdev; } ;


 int _FW_LINKED ;
 scalar_t__ check_fwstate (struct mlme_priv*,int ) ;
 int free_mlme_ap_info (struct adapter*) ;
 int pr_debug (char*,int ) ;
 int rtl88eu_mon_deinit (int ) ;
 int rtw_cancel_all_timer (struct adapter*) ;
 int rtw_dev_unload (struct adapter*) ;
 int rtw_disassoc_cmd (struct adapter*,int ,int) ;
 int rtw_free_drv_sw (struct adapter*) ;
 int rtw_free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void rtw_usb_if1_deinit(struct adapter *if1)
{
 struct net_device *pnetdev = if1->pnetdev;
 struct mlme_priv *pmlmepriv = &if1->mlmepriv;

 if (check_fwstate(pmlmepriv, _FW_LINKED))
  rtw_disassoc_cmd(if1, 0, 0);





 if (pnetdev)
  unregister_netdev(pnetdev);

 rtl88eu_mon_deinit(if1->pmondev);
 rtw_cancel_all_timer(if1);

 rtw_dev_unload(if1);
 pr_debug("+r871xu_dev_remove, hw_init_completed=%d\n",
  if1->hw_init_completed);
 rtw_free_drv_sw(if1);
 rtw_free_netdev(pnetdev);
}
