
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int cdev; } ;
struct dasd_ccw_req {int memdev; int callback; } ;
struct ciw {scalar_t__ cmd; } ;
typedef int __u8 ;


 int CIW_TYPE_RCD ;
 scalar_t__ DASD_ECKD_CCW_RCD ;
 int DASD_ECKD_MAGIC ;
 int DASD_ECKD_RCD_DATA_SIZE ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct ciw* ccw_device_get_ciw (int ,int ) ;
 int dasd_eckd_fill_rcd_cqr (struct dasd_device*,struct dasd_ccw_req*,char*,int ) ;
 int dasd_sfree_request (struct dasd_ccw_req*,int ) ;
 int dasd_sleep_on (struct dasd_ccw_req*) ;
 struct dasd_ccw_req* dasd_smalloc_request (int ,int,int ,struct dasd_device*,int *) ;
 int kfree (char*) ;
 char* kzalloc (int,int) ;
 int read_conf_cb ;

__attribute__((used)) static int dasd_eckd_read_conf_lpm(struct dasd_device *device,
       void **rcd_buffer,
       int *rcd_buffer_size, __u8 lpm)
{
 struct ciw *ciw;
 char *rcd_buf = ((void*)0);
 int ret;
 struct dasd_ccw_req *cqr;





 ciw = ccw_device_get_ciw(device->cdev, CIW_TYPE_RCD);
 if (!ciw || ciw->cmd != DASD_ECKD_CCW_RCD) {
  ret = -EOPNOTSUPP;
  goto out_error;
 }
 rcd_buf = kzalloc(DASD_ECKD_RCD_DATA_SIZE, GFP_KERNEL | GFP_DMA);
 if (!rcd_buf) {
  ret = -ENOMEM;
  goto out_error;
 }
 cqr = dasd_smalloc_request(DASD_ECKD_MAGIC, 1 ,
       0,
       device, ((void*)0));
 if (IS_ERR(cqr)) {
  DBF_DEV_EVENT(DBF_WARNING, device, "%s",
         "Could not allocate RCD request");
  ret = -ENOMEM;
  goto out_error;
 }
 dasd_eckd_fill_rcd_cqr(device, cqr, rcd_buf, lpm);
 cqr->callback = read_conf_cb;
 ret = dasd_sleep_on(cqr);



 dasd_sfree_request(cqr, cqr->memdev);
 if (ret)
  goto out_error;

 *rcd_buffer_size = DASD_ECKD_RCD_DATA_SIZE;
 *rcd_buffer = rcd_buf;
 return 0;
out_error:
 kfree(rcd_buf);
 *rcd_buffer = ((void*)0);
 *rcd_buffer_size = 0;
 return ret;
}
