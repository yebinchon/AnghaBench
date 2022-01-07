
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cros_ec_device {int dummy; } ;
struct cros_ec_command {int dummy; } ;


 int cros_ec_xfer_high_pri (struct cros_ec_device*,struct cros_ec_command*,int ) ;
 int do_cros_ec_pkt_xfer_spi ;

__attribute__((used)) static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
    struct cros_ec_command *ec_msg)
{
 return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_pkt_xfer_spi);
}
