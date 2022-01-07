
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int ref_count; int mem_lock; int erp_chunks; } ;
struct dasd_ccw_req {int dummy; } ;


 int atomic_dec (int *) ;
 int dasd_free_chunk (int *,struct dasd_ccw_req*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
dasd_free_erp_request(struct dasd_ccw_req *cqr, struct dasd_device * device)
{
 unsigned long flags;

 spin_lock_irqsave(&device->mem_lock, flags);
 dasd_free_chunk(&device->erp_chunks, cqr);
 spin_unlock_irqrestore(&device->mem_lock, flags);
 atomic_dec(&device->ref_count);
}
