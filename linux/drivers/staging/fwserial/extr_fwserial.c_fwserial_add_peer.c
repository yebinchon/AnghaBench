
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct virt_plug_params {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int guid; int generation; unsigned long long mgmt_addr; int connect; int lock; struct fwtty_port* port; struct fw_unit* unit; int list; struct fw_serial* serial; int work; int timer; int node_id; int speed; int max_payload; } ;
struct device {int dummy; } ;
struct fw_unit {int directory; struct device device; } ;
struct fw_serial {struct fwtty_peer* self; int peer_list; } ;
struct fw_device {int* config_rom; int generation; scalar_t__ is_local; int node_id; int max_speed; } ;
struct fw_csr_iterator {int dummy; } ;


 int CSR_DEPENDENT_INFO ;
 int CSR_OFFSET ;
 unsigned long long CSR_REGISTER_BASE ;
 int ENOMEM ;
 int FWPS_NOT_ATTACHED ;
 int FWPS_NO_MGMT_ADDR ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int IS_ERR (struct fwtty_port*) ;
 scalar_t__ auto_connect ;
 scalar_t__ create_loop_dev ;
 int dev_set_drvdata (struct device*,struct fwtty_peer*) ;
 int device_max_receive (struct fw_device*) ;
 int fill_plug_params (struct virt_plug_params*,struct fwtty_port*) ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int ) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int fwserial_auto_connect ;
 struct fwtty_port* fwserial_claim_port (struct fwtty_peer*,int ) ;
 int fwserial_peer_workfn ;
 int fwserial_plug_timeout ;
 int fwserial_virt_plug_complete (struct fwtty_peer*,struct virt_plug_params*) ;
 int fwtty_info (struct fw_unit**,char*,unsigned long long) ;
 int fwtty_write_port_status (struct fwtty_port*) ;
 struct fwtty_peer* kzalloc (int,int ) ;
 int link_speed_to_max_payload (int ) ;
 int list_add_rcu (int *,int *) ;
 int min (int ,int ) ;
 int num_ttys ;
 int peer_set_state (struct fwtty_peer*,int ) ;
 int schedule_delayed_work (int *,int) ;
 int smp_rmb () ;
 int smp_wmb () ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int fwserial_add_peer(struct fw_serial *serial, struct fw_unit *unit)
{
 struct device *dev = &unit->device;
 struct fw_device *parent = fw_parent_device(unit);
 struct fwtty_peer *peer;
 struct fw_csr_iterator ci;
 int key, val;
 int generation;

 peer = kzalloc(sizeof(*peer), GFP_KERNEL);
 if (!peer)
  return -ENOMEM;

 peer_set_state(peer, FWPS_NOT_ATTACHED);

 dev_set_drvdata(dev, peer);
 peer->unit = unit;
 peer->guid = (u64)parent->config_rom[3] << 32 | parent->config_rom[4];
 peer->speed = parent->max_speed;
 peer->max_payload = min(device_max_receive(parent),
    link_speed_to_max_payload(peer->speed));

 generation = parent->generation;
 smp_rmb();
 peer->node_id = parent->node_id;
 smp_wmb();
 peer->generation = generation;


 fw_csr_iterator_init(&ci, unit->directory);
 while (fw_csr_iterator_next(&ci, &key, &val)) {
  if (key == (CSR_OFFSET | CSR_DEPENDENT_INFO)) {
   peer->mgmt_addr = CSR_REGISTER_BASE + 4 * val;
   break;
  }
 }
 if (peer->mgmt_addr == 0ULL) {




  peer_set_state(peer, FWPS_NO_MGMT_ADDR);
 }

 spin_lock_init(&peer->lock);
 peer->port = ((void*)0);

 timer_setup(&peer->timer, fwserial_plug_timeout, 0);
 INIT_WORK(&peer->work, fwserial_peer_workfn);
 INIT_DELAYED_WORK(&peer->connect, fwserial_auto_connect);


 peer->serial = serial;
 list_add_rcu(&peer->list, &serial->peer_list);

 fwtty_info(&peer->unit, "peer added (guid:%016llx)\n",
     (unsigned long long)peer->guid);


 if (parent->is_local) {
  serial->self = peer;
  if (create_loop_dev) {
   struct fwtty_port *port;

   port = fwserial_claim_port(peer, num_ttys);
   if (!IS_ERR(port)) {
    struct virt_plug_params params;

    spin_lock_bh(&peer->lock);
    peer->port = port;
    fill_plug_params(&params, port);
    fwserial_virt_plug_complete(peer, &params);
    spin_unlock_bh(&peer->lock);

    fwtty_write_port_status(port);
   }
  }

 } else if (auto_connect) {

  schedule_delayed_work(&peer->connect, 1);
 }

 return 0;
}
