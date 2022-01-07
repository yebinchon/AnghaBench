
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_peer {struct fw_serial* serial; } ;
struct fw_unit {int device; } ;
struct fw_serial {int kref; int * ports; int debugfs; int list; int peer_list; } ;


 scalar_t__ create_loop_dev ;
 int debugfs_remove_recursive (int ) ;
 struct fwtty_peer* dev_get_drvdata (int *) ;
 int fwloop_driver ;
 int fwserial_close_port (int ,int ) ;
 int fwserial_destroy ;
 int fwserial_list_mutex ;
 int fwserial_remove_peer (struct fwtty_peer*) ;
 int fwtty_driver ;
 int kref_put (int *,int ) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_ttys ;

__attribute__((used)) static void fwserial_remove(struct fw_unit *unit)
{
 struct fwtty_peer *peer = dev_get_drvdata(&unit->device);
 struct fw_serial *serial = peer->serial;
 int i;

 mutex_lock(&fwserial_list_mutex);
 fwserial_remove_peer(peer);

 if (list_empty(&serial->peer_list)) {

  list_del_rcu(&serial->list);

  debugfs_remove_recursive(serial->debugfs);

  for (i = 0; i < num_ttys; ++i)
   fwserial_close_port(fwtty_driver, serial->ports[i]);
  if (create_loop_dev)
   fwserial_close_port(fwloop_driver, serial->ports[i]);
  kref_put(&serial->kref, fwserial_destroy);
 }
 mutex_unlock(&fwserial_list_mutex);
}
