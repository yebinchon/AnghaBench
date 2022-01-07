
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_dh_data {int init_error; int init_mutex; int node; struct scsi_device* sdev; int pg; int pg_lock; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SCSI_DH_DEV_OFFLINED ;
 int SCSI_DH_NOMEM ;
 int SCSI_DH_OK ;
 int alua_initialize (struct scsi_device*,struct alua_dh_data*) ;
 int kfree (struct alua_dh_data*) ;
 struct alua_dh_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int alua_bus_attach(struct scsi_device *sdev)
{
 struct alua_dh_data *h;
 int err;

 h = kzalloc(sizeof(*h) , GFP_KERNEL);
 if (!h)
  return SCSI_DH_NOMEM;
 spin_lock_init(&h->pg_lock);
 rcu_assign_pointer(h->pg, ((void*)0));
 h->init_error = SCSI_DH_OK;
 h->sdev = sdev;
 INIT_LIST_HEAD(&h->node);

 mutex_init(&h->init_mutex);
 err = alua_initialize(sdev, h);
 if (err != SCSI_DH_OK && err != SCSI_DH_DEV_OFFLINED)
  goto failed;

 sdev->handler_data = h;
 return SCSI_DH_OK;
failed:
 kfree(h);
 return err;
}
