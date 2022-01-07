
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int block; } ;


 int dasd_schedule_block_bh (int ) ;

__attribute__((used)) static void dasd_return_cqr_cb(struct dasd_ccw_req *cqr, void *data)
{
 dasd_schedule_block_bh(cqr->block);
}
