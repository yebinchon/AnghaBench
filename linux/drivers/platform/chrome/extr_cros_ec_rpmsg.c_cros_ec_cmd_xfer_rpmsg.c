
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int dummy; } ;
struct cros_ec_command {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int cros_ec_cmd_xfer_rpmsg(struct cros_ec_device *ec_dev,
      struct cros_ec_command *ec_msg)
{
 return -EINVAL;
}
