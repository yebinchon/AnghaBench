
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int reconnect_delay; scalar_t__ state; int reconnect_work; int dev_loss_tmo; int fast_io_fail_tmo; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 scalar_t__ SRP_RPORT_RUNNING ;
 int cancel_delayed_work (int *) ;
 int queue_delayed_work (int ,int *,int) ;
 int srp_parse_tmo (int*,char const*) ;
 int srp_tmo_valid (int,int ,int ) ;
 int system_long_wq ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t store_reconnect_delay(struct device *dev,
         struct device_attribute *attr,
         const char *buf, const size_t count)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 int res, delay;

 res = srp_parse_tmo(&delay, buf);
 if (res)
  goto out;
 res = srp_tmo_valid(delay, rport->fast_io_fail_tmo,
       rport->dev_loss_tmo);
 if (res)
  goto out;

 if (rport->reconnect_delay <= 0 && delay > 0 &&
     rport->state != SRP_RPORT_RUNNING) {
  queue_delayed_work(system_long_wq, &rport->reconnect_work,
       delay * HZ);
 } else if (delay <= 0) {
  cancel_delayed_work(&rport->reconnect_work);
 }
 rport->reconnect_delay = delay;
 res = count;

out:
 return res;
}
