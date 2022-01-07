
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ops; } ;
struct TYPE_7__ {struct fwtty_port* callback_data; int address_callback; scalar_t__ length; } ;
struct fwtty_port {int loopback; struct fwtty_port** ports; TYPE_1__ port; int kref; int index; int list; int debugfs; struct device* device; TYPE_5__ rx_handler; int peer; int tx_fifo; int max_payload; int wait_tx; int hangup; int emit_breaks; int drain; int lock; struct fwtty_port* serial; int peer_list; struct fw_card* card; } ;
struct fw_unit {int device; } ;
struct fw_serial {int loopback; struct fw_serial** ports; TYPE_1__ port; int kref; int index; int list; int debugfs; struct device* device; TYPE_5__ rx_handler; int peer; int tx_fifo; int max_payload; int wait_tx; int hangup; int emit_breaks; int drain; int lock; struct fw_serial* serial; int peer_list; struct fw_card* card; } ;
struct fw_device {struct fw_card* card; } ;
struct fw_card {scalar_t__ guid; int * device; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int FWTTY_INVALID_INDEX ;
 scalar_t__ FWTTY_PORT_RXFIFO_LEN ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct device*) ;
 int IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (struct device*) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int SCODE_100 ;
 scalar_t__ create_loop_dev ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct fwtty_port*,int *) ;
 int debugfs_remove_recursive (int ) ;
 int dev_name (int *) ;
 int dma_fifo_init (int *) ;
 int fw_core_add_address_handler (TYPE_5__*,int *) ;
 int fw_high_memory_region ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int fwloop_driver ;
 int fwserial_add_peer (struct fwtty_port*,struct fw_unit*) ;
 int fwserial_debugfs ;
 int fwserial_destroy ;
 int fwserial_list ;
 int fwtty_do_hangup ;
 int fwtty_drain_tx ;
 int fwtty_driver ;
 int fwtty_emit_breaks ;
 int fwtty_err (struct fw_unit**,char*,...) ;
 int fwtty_notice (struct fw_unit**,char*,int ,unsigned long long) ;
 int fwtty_peers_fops ;
 int fwtty_port_handler ;
 int fwtty_port_ops ;
 int fwtty_ports_add (struct fwtty_port*) ;
 int fwtty_stats_fops ;
 int init_waitqueue_head (int *) ;
 int kfree (struct fwtty_port*) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 struct fwtty_port* kzalloc (int,int ) ;
 int link_speed_to_max_payload (int ) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int loop_idx (struct fwtty_port*) ;
 int num_ports ;
 int num_ttys ;
 int spin_lock_init (int *) ;
 int tty_buffer_set_limit (TYPE_1__*,int) ;
 int tty_port_destroy (TYPE_1__*) ;
 int tty_port_init (TYPE_1__*) ;
 struct device* tty_port_register_device (TYPE_1__*,int ,int ,int *) ;
 int tty_unregister_device (int ,int ) ;

__attribute__((used)) static int fwserial_create(struct fw_unit *unit)
{
 struct fw_device *parent = fw_parent_device(unit);
 struct fw_card *card = parent->card;
 struct fw_serial *serial;
 struct fwtty_port *port;
 struct device *tty_dev;
 int i, j;
 int err;

 serial = kzalloc(sizeof(*serial), GFP_KERNEL);
 if (!serial)
  return -ENOMEM;

 kref_init(&serial->kref);
 serial->card = card;
 INIT_LIST_HEAD(&serial->peer_list);

 for (i = 0; i < num_ports; ++i) {
  port = kzalloc(sizeof(*port), GFP_KERNEL);
  if (!port) {
   err = -ENOMEM;
   goto free_ports;
  }
  tty_port_init(&port->port);
  port->index = FWTTY_INVALID_INDEX;
  port->port.ops = &fwtty_port_ops;
  port->serial = serial;
  tty_buffer_set_limit(&port->port, 128 * 1024);

  spin_lock_init(&port->lock);
  INIT_DELAYED_WORK(&port->drain, fwtty_drain_tx);
  INIT_DELAYED_WORK(&port->emit_breaks, fwtty_emit_breaks);
  INIT_WORK(&port->hangup, fwtty_do_hangup);
  init_waitqueue_head(&port->wait_tx);
  port->max_payload = link_speed_to_max_payload(SCODE_100);
  dma_fifo_init(&port->tx_fifo);

  RCU_INIT_POINTER(port->peer, ((void*)0));
  serial->ports[i] = port;


  port->rx_handler.length = FWTTY_PORT_RXFIFO_LEN + 4;
  port->rx_handler.address_callback = fwtty_port_handler;
  port->rx_handler.callback_data = port;




  err = fw_core_add_address_handler(&port->rx_handler,
        &fw_high_memory_region);
  if (err) {
   kfree(port);
   goto free_ports;
  }
 }


 err = fwtty_ports_add(serial);
 if (err) {
  fwtty_err(&unit, "no space in port table\n");
  goto free_ports;
 }

 for (j = 0; j < num_ttys; ++j) {
  tty_dev = tty_port_register_device(&serial->ports[j]->port,
         fwtty_driver,
         serial->ports[j]->index,
         card->device);
  if (IS_ERR(tty_dev)) {
   err = PTR_ERR(tty_dev);
   fwtty_err(&unit, "register tty device error (%d)\n",
      err);
   goto unregister_ttys;
  }

  serial->ports[j]->device = tty_dev;
 }


 if (create_loop_dev) {
  struct device *loop_dev;

  loop_dev = tty_port_register_device(&serial->ports[j]->port,
          fwloop_driver,
          loop_idx(serial->ports[j]),
          card->device);
  if (IS_ERR(loop_dev)) {
   err = PTR_ERR(loop_dev);
   fwtty_err(&unit, "create loop device failed (%d)\n",
      err);
   goto unregister_ttys;
  }
  serial->ports[j]->device = loop_dev;
  serial->ports[j]->loopback = 1;
 }

 if (!IS_ERR_OR_NULL(fwserial_debugfs)) {
  serial->debugfs = debugfs_create_dir(dev_name(&unit->device),
           fwserial_debugfs);
  if (!IS_ERR_OR_NULL(serial->debugfs)) {
   debugfs_create_file("peers", 0444, serial->debugfs,
         serial, &fwtty_peers_fops);
   debugfs_create_file("stats", 0444, serial->debugfs,
         serial, &fwtty_stats_fops);
  }
 }

 list_add_rcu(&serial->list, &fwserial_list);

 fwtty_notice(&unit, "TTY over FireWire on device %s (guid %016llx)\n",
       dev_name(card->device), (unsigned long long)card->guid);

 err = fwserial_add_peer(serial, unit);
 if (!err)
  return 0;

 fwtty_err(&unit, "unable to add peer unit device (%d)\n", err);


 debugfs_remove_recursive(serial->debugfs);

 list_del_rcu(&serial->list);
 if (create_loop_dev)
  tty_unregister_device(fwloop_driver,
          loop_idx(serial->ports[j]));
unregister_ttys:
 for (--j; j >= 0; --j)
  tty_unregister_device(fwtty_driver, serial->ports[j]->index);
 kref_put(&serial->kref, fwserial_destroy);
 return err;

free_ports:
 for (--i; i >= 0; --i) {
  tty_port_destroy(&serial->ports[i]->port);
  kfree(serial->ports[i]);
 }
 kfree(serial);
 return err;
}
