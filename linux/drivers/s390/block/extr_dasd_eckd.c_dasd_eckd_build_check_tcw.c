
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tidaw {int cpmode; int expires; int flags; int status; int buildclk; int retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int cpaddr; int data; } ;
struct itcw {int cpmode; int expires; int flags; int status; int buildclk; int retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int cpaddr; int data; } ;
struct format_data_t {int stop_unit; int start_unit; } ;
struct eckd_count {int dummy; } ;
struct dasd_eckd_private {int count; } ;
struct dasd_device {int default_expires; int default_retries; struct dasd_eckd_private* private; } ;
struct dasd_ccw_req {int cpmode; int expires; int flags; int status; int buildclk; int retries; struct dasd_device* basedev; struct dasd_device* memdev; struct dasd_device* startdev; int cpaddr; int data; } ;


 int DASD_CQR_FILLED ;
 int DASD_CQR_SUPPRESS_FP ;
 int DASD_CQR_SUPPRESS_IL ;
 int DASD_ECKD_CCW_READ_COUNT_MT ;
 int DASD_ECKD_MAGIC ;
 int EINVAL ;
 struct tidaw* ERR_PTR (int) ;
 int HZ ;
 scalar_t__ IS_ERR (struct tidaw*) ;
 int ITCW_OP_READ ;
 int TIDAW_FLAGS_LAST ;
 struct dasd_device* dasd_alias_get_start_dev (struct dasd_device*) ;
 struct tidaw* dasd_fmalloc_request (int ,int ,int,struct dasd_device*) ;
 int dasd_sfree_request (struct tidaw*,struct dasd_device*) ;
 int get_tod_clock () ;
 struct tidaw* itcw_add_tidaw (struct tidaw*,int ,int ,int) ;
 int itcw_calc_size (int ,int,int ) ;
 int itcw_finalize (struct tidaw*) ;
 int itcw_get_tcw (struct tidaw*) ;
 struct tidaw* itcw_init (int ,int,int ,int ,int,int ) ;
 int prepare_itcw (struct tidaw*,int,int,int ,struct dasd_device*,struct dasd_device*,int ,int,int,int,int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static struct dasd_ccw_req *
dasd_eckd_build_check_tcw(struct dasd_device *base, struct format_data_t *fdata,
     int enable_pav, struct eckd_count *fmt_buffer,
     int rpt)
{
 struct dasd_eckd_private *start_priv;
 struct dasd_device *startdev = ((void*)0);
 struct tidaw *last_tidaw = ((void*)0);
 struct dasd_ccw_req *cqr;
 struct itcw *itcw;
 int itcw_size;
 int count;
 int rc;
 int i;

 if (enable_pav)
  startdev = dasd_alias_get_start_dev(base);

 if (!startdev)
  startdev = base;

 start_priv = startdev->private;

 count = rpt * (fdata->stop_unit - fdata->start_unit + 1);





 itcw_size = itcw_calc_size(0, count, 0);

 cqr = dasd_fmalloc_request(DASD_ECKD_MAGIC, 0, itcw_size, startdev);
 if (IS_ERR(cqr))
  return cqr;

 start_priv->count++;

 itcw = itcw_init(cqr->data, itcw_size, ITCW_OP_READ, 0, count, 0);
 if (IS_ERR(itcw)) {
  rc = -EINVAL;
  goto out_err;
 }

 cqr->cpaddr = itcw_get_tcw(itcw);
 rc = prepare_itcw(itcw, fdata->start_unit, fdata->stop_unit,
     DASD_ECKD_CCW_READ_COUNT_MT, base, startdev, 0, count,
     sizeof(struct eckd_count),
     count * sizeof(struct eckd_count), 0, rpt);
 if (rc)
  goto out_err;

 for (i = 0; i < count; i++) {
  last_tidaw = itcw_add_tidaw(itcw, 0, fmt_buffer++,
         sizeof(struct eckd_count));
  if (IS_ERR(last_tidaw)) {
   rc = -EINVAL;
   goto out_err;
  }
 }

 last_tidaw->flags |= TIDAW_FLAGS_LAST;
 itcw_finalize(itcw);

 cqr->cpmode = 1;
 cqr->startdev = startdev;
 cqr->memdev = startdev;
 cqr->basedev = base;
 cqr->retries = startdev->default_retries;
 cqr->expires = startdev->default_expires * HZ;
 cqr->buildclk = get_tod_clock();
 cqr->status = DASD_CQR_FILLED;

 set_bit(DASD_CQR_SUPPRESS_FP, &cqr->flags);
 set_bit(DASD_CQR_SUPPRESS_IL, &cqr->flags);

 return cqr;

out_err:
 dasd_sfree_request(cqr, startdev);

 return ERR_PTR(rc);
}
