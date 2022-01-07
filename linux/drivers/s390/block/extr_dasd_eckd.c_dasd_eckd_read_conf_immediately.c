
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;
struct dasd_ccw_req {int retries; int callback; int flags; } ;
struct ciw {scalar_t__ cmd; } ;
typedef int __u8 ;


 int CIW_TYPE_RCD ;
 int DASD_CQR_ALLOW_SLOCK ;
 int DASD_CQR_FLAGS_USE_ERP ;
 scalar_t__ DASD_ECKD_CCW_RCD ;
 int EOPNOTSUPP ;
 struct ciw* ccw_device_get_ciw (int ,int ) ;
 int clear_bit (int ,int *) ;
 int dasd_eckd_fill_rcd_cqr (struct dasd_device*,struct dasd_ccw_req*,int *,int ) ;
 int dasd_sleep_on_immediatly (struct dasd_ccw_req*) ;
 int read_conf_cb ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int dasd_eckd_read_conf_immediately(struct dasd_device *device,
        struct dasd_ccw_req *cqr,
        __u8 *rcd_buffer,
        __u8 lpm)
{
 struct ciw *ciw;
 int rc;




 ciw = ccw_device_get_ciw(device->cdev, CIW_TYPE_RCD);
 if (!ciw || ciw->cmd != DASD_ECKD_CCW_RCD)
  return -EOPNOTSUPP;

 dasd_eckd_fill_rcd_cqr(device, cqr, rcd_buffer, lpm);
 clear_bit(DASD_CQR_FLAGS_USE_ERP, &cqr->flags);
 set_bit(DASD_CQR_ALLOW_SLOCK, &cqr->flags);
 cqr->retries = 5;
 cqr->callback = read_conf_cb;
 rc = dasd_sleep_on_immediatly(cqr);
 return rc;
}
