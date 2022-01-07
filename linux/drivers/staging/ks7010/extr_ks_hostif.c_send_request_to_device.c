
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int dummy; } ;


 int ks_wlan_hw_tx (struct ks_wlan_private*,void*,size_t,int *,int *) ;
 int ps_confirm_wait_inc (struct ks_wlan_private*) ;

__attribute__((used)) static inline void send_request_to_device(struct ks_wlan_private *priv,
       void *data, size_t size)
{
 ps_confirm_wait_inc(priv);
 ks_wlan_hw_tx(priv, data, size, ((void*)0), ((void*)0));
}
