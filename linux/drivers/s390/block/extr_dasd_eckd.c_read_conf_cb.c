
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {scalar_t__ status; struct ccw1* cpaddr; } ;
struct ccw1 {scalar_t__ cda; } ;
typedef scalar_t__ addr_t ;
typedef int __u8 ;


 scalar_t__ DASD_CQR_DONE ;
 int dasd_wakeup_cb (struct dasd_ccw_req*,void*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void read_conf_cb(struct dasd_ccw_req *cqr, void *data)
{
 struct ccw1 *ccw;
 __u8 *rcd_buffer;

 if (cqr->status != DASD_CQR_DONE) {
  ccw = cqr->cpaddr;
  rcd_buffer = (__u8 *)((addr_t) ccw->cda);
  memset(rcd_buffer, 0, sizeof(*rcd_buffer));

  rcd_buffer[0] = 0xE5;
  rcd_buffer[1] = 0xF1;
  rcd_buffer[2] = 0x4B;
  rcd_buffer[3] = 0xF0;
 }
 dasd_wakeup_cb(cqr, data);
}
