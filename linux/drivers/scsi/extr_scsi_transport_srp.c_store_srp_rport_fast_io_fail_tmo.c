
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int fast_io_fail_tmo; int dev_loss_tmo; int reconnect_delay; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int srp_parse_tmo (int*,char const*) ;
 int srp_tmo_valid (int ,int,int ) ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t store_srp_rport_fast_io_fail_tmo(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 int res;
 int fast_io_fail_tmo;

 res = srp_parse_tmo(&fast_io_fail_tmo, buf);
 if (res)
  goto out;
 res = srp_tmo_valid(rport->reconnect_delay, fast_io_fail_tmo,
       rport->dev_loss_tmo);
 if (res)
  goto out;
 rport->fast_io_fail_tmo = fast_io_fail_tmo;
 res = count;

out:
 return res;
}
