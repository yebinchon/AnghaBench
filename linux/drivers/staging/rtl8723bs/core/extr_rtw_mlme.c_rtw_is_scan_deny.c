
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int set_scan_deny; } ;
struct adapter {struct mlme_priv mlmepriv; } ;


 scalar_t__ atomic_read (int *) ;

inline bool rtw_is_scan_deny(struct adapter *adapter)
{
 struct mlme_priv *mlmepriv = &adapter->mlmepriv;
 return (atomic_read(&mlmepriv->set_scan_deny) != 0) ? 1 : 0;
}
