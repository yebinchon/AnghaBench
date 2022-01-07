
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int dummy; } ;


 int dasd_flush_wq ;
 int wake_up (int *) ;

__attribute__((used)) static void _dasd_wake_block_flush_cb(struct dasd_ccw_req *cqr, void *data)
{
 wake_up(&dasd_flush_wq);
}
