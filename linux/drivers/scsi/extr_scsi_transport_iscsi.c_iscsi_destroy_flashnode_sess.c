
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ kobj; } ;
struct iscsi_bus_flash_session {TYPE_2__ dev; } ;


 int device_for_each_child (TYPE_2__*,int *,int ) ;
 int device_unregister (TYPE_2__*) ;
 int iscsi_iter_destroy_flashnode_conn_fn ;
 int pr_err (char*,int ,int) ;

void iscsi_destroy_flashnode_sess(struct iscsi_bus_flash_session *fnode_sess)
{
 int err;

 err = device_for_each_child(&fnode_sess->dev, ((void*)0),
        iscsi_iter_destroy_flashnode_conn_fn);
 if (err)
  pr_err("Could not delete all connections for %s. Error %d.\n",
         fnode_sess->dev.kobj.name, err);

 device_unregister(&fnode_sess->dev);
}
