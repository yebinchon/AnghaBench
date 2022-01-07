
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct srp_rport_identifiers {int roles; int port_id; } ;
struct TYPE_12__ {int release; int parent; } ;
struct srp_rport {int reconnect_delay; int fast_io_fail_tmo; int dev_loss_tmo; TYPE_2__ dev; int dev_loss_work; int fast_io_fail_work; int reconnect_work; int roles; int port_id; int mutex; } ;
struct srp_internal {TYPE_1__* f; } ;
struct device {int dummy; } ;
struct Scsi_Host {int host_no; int transportt; struct device shost_gendev; } ;
struct TYPE_13__ {int next_port_id; } ;
struct TYPE_11__ {int* reconnect_delay; int* fast_io_fail_tmo; int* dev_loss_tmo; scalar_t__ reconnect; } ;


 int ENOMEM ;
 struct srp_rport* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int atomic_inc_return (int *) ;
 int dev_set_name (TYPE_2__*,char*,int ,int) ;
 int device_add (TYPE_2__*) ;
 int device_initialize (TYPE_2__*) ;
 int get_device (struct device*) ;
 struct srp_rport* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int mutex_init (int *) ;
 int put_device (TYPE_2__*) ;
 int rport_dev_loss_timedout ;
 int rport_fast_io_fail_timedout ;
 int srp_reconnect_work ;
 int srp_rport_release ;
 TYPE_6__* to_srp_host_attrs (struct Scsi_Host*) ;
 struct srp_internal* to_srp_internal (int ) ;
 int transport_add_device (TYPE_2__*) ;
 int transport_configure_device (TYPE_2__*) ;
 int transport_destroy_device (TYPE_2__*) ;
 int transport_setup_device (TYPE_2__*) ;

struct srp_rport *srp_rport_add(struct Scsi_Host *shost,
    struct srp_rport_identifiers *ids)
{
 struct srp_rport *rport;
 struct device *parent = &shost->shost_gendev;
 struct srp_internal *i = to_srp_internal(shost->transportt);
 int id, ret;

 rport = kzalloc(sizeof(*rport), GFP_KERNEL);
 if (!rport)
  return ERR_PTR(-ENOMEM);

 mutex_init(&rport->mutex);

 device_initialize(&rport->dev);

 rport->dev.parent = get_device(parent);
 rport->dev.release = srp_rport_release;

 memcpy(rport->port_id, ids->port_id, sizeof(rport->port_id));
 rport->roles = ids->roles;

 if (i->f->reconnect)
  rport->reconnect_delay = i->f->reconnect_delay ?
   *i->f->reconnect_delay : 10;
 INIT_DELAYED_WORK(&rport->reconnect_work, srp_reconnect_work);
 rport->fast_io_fail_tmo = i->f->fast_io_fail_tmo ?
  *i->f->fast_io_fail_tmo : 15;
 rport->dev_loss_tmo = i->f->dev_loss_tmo ? *i->f->dev_loss_tmo : 60;
 INIT_DELAYED_WORK(&rport->fast_io_fail_work,
     rport_fast_io_fail_timedout);
 INIT_DELAYED_WORK(&rport->dev_loss_work, rport_dev_loss_timedout);

 id = atomic_inc_return(&to_srp_host_attrs(shost)->next_port_id);
 dev_set_name(&rport->dev, "port-%d:%d", shost->host_no, id);

 transport_setup_device(&rport->dev);

 ret = device_add(&rport->dev);
 if (ret) {
  transport_destroy_device(&rport->dev);
  put_device(&rport->dev);
  return ERR_PTR(ret);
 }

 transport_add_device(&rport->dev);
 transport_configure_device(&rport->dev);

 return rport;
}
