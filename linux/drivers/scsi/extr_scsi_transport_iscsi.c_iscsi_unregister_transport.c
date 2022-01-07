
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_transport {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {int host_attrs; } ;
struct iscsi_internal {TYPE_2__ dev; TYPE_1__ t; int session_cont; int conn_cont; int list; } ;


 int BUG_ON (int) ;
 int device_unregister (TYPE_2__*) ;
 struct iscsi_internal* iscsi_if_transport_lookup (struct iscsi_transport*) ;
 int iscsi_transport_group ;
 int iscsi_transport_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rx_queue_mutex ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sysfs_remove_group (int *,int *) ;
 int transport_container_unregister (int *) ;

int iscsi_unregister_transport(struct iscsi_transport *tt)
{
 struct iscsi_internal *priv;
 unsigned long flags;

 BUG_ON(!tt);

 mutex_lock(&rx_queue_mutex);

 priv = iscsi_if_transport_lookup(tt);
 BUG_ON (!priv);

 spin_lock_irqsave(&iscsi_transport_lock, flags);
 list_del(&priv->list);
 spin_unlock_irqrestore(&iscsi_transport_lock, flags);

 transport_container_unregister(&priv->conn_cont);
 transport_container_unregister(&priv->session_cont);
 transport_container_unregister(&priv->t.host_attrs);

 sysfs_remove_group(&priv->dev.kobj, &iscsi_transport_group);
 device_unregister(&priv->dev);
 mutex_unlock(&rx_queue_mutex);

 return 0;
}
