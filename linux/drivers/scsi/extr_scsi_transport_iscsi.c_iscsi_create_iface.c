
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct iscsi_transport {int dummy; } ;
struct TYPE_4__ {int parent; int kobj; int * class; int release; } ;
struct iscsi_iface {TYPE_1__ dev; struct iscsi_iface* dd_data; scalar_t__ iface_num; scalar_t__ iface_type; struct iscsi_transport* transport; } ;
struct Scsi_Host {int host_no; int shost_gendev; } ;


 int GFP_KERNEL ;
 scalar_t__ ISCSI_IFACE_TYPE_IPV4 ;
 int dev_set_name (TYPE_1__*,char*,int ,scalar_t__) ;
 int device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int get_device (int *) ;
 int iscsi_iface_class ;
 int iscsi_iface_group ;
 int iscsi_iface_release ;
 int kfree (struct iscsi_iface*) ;
 struct iscsi_iface* kzalloc (int,int ) ;
 int put_device (int ) ;
 int sysfs_create_group (int *,int *) ;

struct iscsi_iface *
iscsi_create_iface(struct Scsi_Host *shost, struct iscsi_transport *transport,
     uint32_t iface_type, uint32_t iface_num, int dd_size)
{
 struct iscsi_iface *iface;
 int err;

 iface = kzalloc(sizeof(*iface) + dd_size, GFP_KERNEL);
 if (!iface)
  return ((void*)0);

 iface->transport = transport;
 iface->iface_type = iface_type;
 iface->iface_num = iface_num;
 iface->dev.release = iscsi_iface_release;
 iface->dev.class = &iscsi_iface_class;

 iface->dev.parent = get_device(&shost->shost_gendev);
 if (iface_type == ISCSI_IFACE_TYPE_IPV4)
  dev_set_name(&iface->dev, "ipv4-iface-%u-%u", shost->host_no,
        iface_num);
 else
  dev_set_name(&iface->dev, "ipv6-iface-%u-%u", shost->host_no,
        iface_num);

 err = device_register(&iface->dev);
 if (err)
  goto free_iface;

 err = sysfs_create_group(&iface->dev.kobj, &iscsi_iface_group);
 if (err)
  goto unreg_iface;

 if (dd_size)
  iface->dd_data = &iface[1];
 return iface;

unreg_iface:
 device_unregister(&iface->dev);
 return ((void*)0);

free_iface:
 put_device(iface->dev.parent);
 kfree(iface);
 return ((void*)0);
}
