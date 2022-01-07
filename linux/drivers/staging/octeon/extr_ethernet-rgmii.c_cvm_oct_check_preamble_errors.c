
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pcterr; } ;
union cvmx_gmxx_rxx_int_reg {TYPE_1__ s; int u64; } ;
struct octeon_ethernet {int last_speed; int port; int link_info; } ;
struct net_device {int name; } ;
struct TYPE_5__ {int speed; } ;
struct TYPE_6__ {TYPE_2__ s; int u64; } ;
typedef TYPE_3__ cvmx_helper_link_info_t ;


 int CVMX_GMXX_RXX_INT_REG (int,int) ;
 int INDEX (int ) ;
 int INTERFACE (int ) ;
 int cvm_oct_set_hw_preamble (struct octeon_ethernet*,int) ;
 int cvmx_read_csr (int ) ;
 int global_register_lock ;
 struct octeon_ethernet* netdev_priv (struct net_device*) ;
 int printk_ratelimited (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cvm_oct_check_preamble_errors(struct net_device *dev)
{
 struct octeon_ethernet *priv = netdev_priv(dev);
 cvmx_helper_link_info_t link_info;
 unsigned long flags;

 link_info.u64 = priv->link_info;





 spin_lock_irqsave(&global_register_lock, flags);

 if (link_info.s.speed == 10 && priv->last_speed == 10) {




  int interface = INTERFACE(priv->port);
  int index = INDEX(priv->port);
  union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;

  gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG
       (index, interface));
  if (gmxx_rxx_int_reg.s.pcterr) {






   cvm_oct_set_hw_preamble(priv, 0);
   printk_ratelimited("%s: Using 10Mbps with software preamble removal\n",
        dev->name);
  }
 } else {






  if (priv->last_speed != link_info.s.speed)
   cvm_oct_set_hw_preamble(priv, 1);
  priv->last_speed = link_info.s.speed;
 }
 spin_unlock_irqrestore(&global_register_lock, flags);
}
