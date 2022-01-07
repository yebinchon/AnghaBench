
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_to_rport (struct device*) ;
 scalar_t__ scsi_is_srp_rport (struct device*) ;
 int srp_rport_del (int ) ;

__attribute__((used)) static int do_srp_rport_del(struct device *dev, void *data)
{
 if (scsi_is_srp_rport(dev))
  srp_rport_del(dev_to_rport(dev));
 return 0;
}
