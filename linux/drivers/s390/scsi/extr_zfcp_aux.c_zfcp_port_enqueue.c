
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_8__ {int release; int groups; int * parent; } ;
struct TYPE_7__ {struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_port {int d_id; int status; int list; TYPE_3__ dev; TYPE_2__ erp_action; int rport_task; scalar_t__ wwpn; struct zfcp_adapter* adapter; int rport_work; int test_link_work; int gid_pn_work; int units; int unit_list; int unit_list_lock; } ;
struct zfcp_adapter {int port_list_lock; int port_list; TYPE_1__* ccw_device; int ref; } ;
struct TYPE_6__ {int dev; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 struct zfcp_port* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RPORT_NONE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int atomic_or (int,int *) ;
 int atomic_set (int *,int ) ;
 scalar_t__ dev_set_name (TYPE_3__*,char*,unsigned long long) ;
 scalar_t__ device_register (TYPE_3__*) ;
 int kfree (struct zfcp_port*) ;
 int kref_get (int *) ;
 struct zfcp_port* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int put_device (TYPE_3__*) ;
 int rwlock_init (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zfcp_ccw_adapter_put (struct zfcp_adapter*) ;
 int zfcp_fc_link_test_work ;
 int zfcp_fc_port_did_lookup ;
 struct zfcp_port* zfcp_get_port_by_wwpn (struct zfcp_adapter*,scalar_t__) ;
 int zfcp_port_attr_groups ;
 int zfcp_port_release ;
 int zfcp_scsi_rport_work ;

struct zfcp_port *zfcp_port_enqueue(struct zfcp_adapter *adapter, u64 wwpn,
         u32 status, u32 d_id)
{
 struct zfcp_port *port;
 int retval = -ENOMEM;

 kref_get(&adapter->ref);

 port = zfcp_get_port_by_wwpn(adapter, wwpn);
 if (port) {
  put_device(&port->dev);
  retval = -EEXIST;
  goto err_out;
 }

 port = kzalloc(sizeof(struct zfcp_port), GFP_KERNEL);
 if (!port)
  goto err_out;

 rwlock_init(&port->unit_list_lock);
 INIT_LIST_HEAD(&port->unit_list);
 atomic_set(&port->units, 0);

 INIT_WORK(&port->gid_pn_work, zfcp_fc_port_did_lookup);
 INIT_WORK(&port->test_link_work, zfcp_fc_link_test_work);
 INIT_WORK(&port->rport_work, zfcp_scsi_rport_work);

 port->adapter = adapter;
 port->d_id = d_id;
 port->wwpn = wwpn;
 port->rport_task = RPORT_NONE;
 port->dev.parent = &adapter->ccw_device->dev;
 port->dev.groups = zfcp_port_attr_groups;
 port->dev.release = zfcp_port_release;

 port->erp_action.adapter = adapter;
 port->erp_action.port = port;

 if (dev_set_name(&port->dev, "0x%016llx", (unsigned long long)wwpn)) {
  kfree(port);
  goto err_out;
 }
 retval = -EINVAL;

 if (device_register(&port->dev)) {
  put_device(&port->dev);
  goto err_out;
 }

 write_lock_irq(&adapter->port_list_lock);
 list_add_tail(&port->list, &adapter->port_list);
 write_unlock_irq(&adapter->port_list_lock);

 atomic_or(status | ZFCP_STATUS_COMMON_RUNNING, &port->status);

 return port;

err_out:
 zfcp_ccw_adapter_put(adapter);
 return ERR_PTR(retval);
}
