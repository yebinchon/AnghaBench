
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlan_network {int dummy; } ;
struct mlme_priv {int dummy; } ;


 struct wlan_network* _r8712_alloc_network (struct mlme_priv*) ;

__attribute__((used)) static struct wlan_network *alloc_network(struct mlme_priv *pmlmepriv)
{
 return _r8712_alloc_network(pmlmepriv);
}
