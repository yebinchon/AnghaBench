
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct mpc_group {scalar_t__ in_sweep; } ;
struct ctcm_priv {struct mpc_group* mpcg; } ;


 int ctcm_clear_busy_do (struct net_device*) ;

__attribute__((used)) static inline void ctcm_clear_busy(struct net_device *dev)
{
 struct mpc_group *grp;
 grp = ((struct ctcm_priv *)dev->ml_priv)->mpcg;

 if (!(grp && grp->in_sweep))
  ctcm_clear_busy_do(dev);
}
