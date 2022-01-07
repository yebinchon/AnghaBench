
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct request {int rq_flags; } ;
struct alua_port_group {unsigned char state; } ;
struct alua_dh_data {int pg; } ;
typedef int blk_status_t ;


 int BLK_STS_IOERR ;
 int BLK_STS_OK ;
 int BLK_STS_RESOURCE ;
 int RQF_QUIET ;




 struct alua_port_group* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static blk_status_t alua_prep_fn(struct scsi_device *sdev, struct request *req)
{
 struct alua_dh_data *h = sdev->handler_data;
 struct alua_port_group *pg;
 unsigned char state = 129;

 rcu_read_lock();
 pg = rcu_dereference(h->pg);
 if (pg)
  state = pg->state;
 rcu_read_unlock();

 switch (state) {
 case 129:
 case 131:
 case 130:
  return BLK_STS_OK;
 case 128:
  return BLK_STS_RESOURCE;
 default:
  req->rq_flags |= RQF_QUIET;
  return BLK_STS_IOERR;
 }
}
