
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_xfer_work_params {int ret; int work; int fn; struct cros_ec_command* ec_msg; struct cros_ec_device* ec_dev; } ;
struct cros_ec_spi {int high_pri_worker; } ;
struct cros_ec_device {struct cros_ec_spi* priv; } ;
struct cros_ec_command {int dummy; } ;
typedef int cros_ec_xfer_fn_t ;


 int KTHREAD_WORK_INIT (int ,int ) ;
 int cros_ec_xfer_high_pri_work ;
 int kthread_flush_work (int *) ;
 int kthread_queue_work (int ,int *) ;

__attribute__((used)) static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,
     struct cros_ec_command *ec_msg,
     cros_ec_xfer_fn_t fn)
{
 struct cros_ec_spi *ec_spi = ec_dev->priv;
 struct cros_ec_xfer_work_params params = {
  .work = KTHREAD_WORK_INIT(params.work,
       cros_ec_xfer_high_pri_work),
  .ec_dev = ec_dev,
  .ec_msg = ec_msg,
  .fn = fn,
 };
 kthread_queue_work(ec_spi->high_pri_worker, &params.work);
 kthread_flush_work(&params.work);

 return params.ret;
}
