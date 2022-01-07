
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int confirm_wait; int status; } ;
struct ks_wlan_private {TYPE_1__ psstatus; } ;


 scalar_t__ PS_ACTIVE_SET ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline void ps_confirm_wait_inc(struct ks_wlan_private *priv)
{
 if (atomic_read(&priv->psstatus.status) > PS_ACTIVE_SET)
  atomic_inc(&priv->psstatus.confirm_wait);
}
