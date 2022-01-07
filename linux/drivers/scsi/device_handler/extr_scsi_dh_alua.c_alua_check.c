
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_port_group {int kref; } ;
struct alua_dh_data {int pg; } ;


 int alua_rtpg_queue (struct alua_port_group*,struct scsi_device*,int *,int) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 struct alua_port_group* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int release_port_group ;

__attribute__((used)) static void alua_check(struct scsi_device *sdev, bool force)
{
 struct alua_dh_data *h = sdev->handler_data;
 struct alua_port_group *pg;

 rcu_read_lock();
 pg = rcu_dereference(h->pg);
 if (!pg || !kref_get_unless_zero(&pg->kref)) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();

 alua_rtpg_queue(pg, sdev, ((void*)0), force);
 kref_put(&pg->kref, release_port_group);
}
