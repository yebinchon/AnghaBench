
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON_ONCE (struct device*) ;
 scalar_t__ scsi_is_srp_rport (struct device*) ;

__attribute__((used)) static int find_child_rport(struct device *dev, void *data)
{
 struct device **child = data;

 if (scsi_is_srp_rport(dev)) {
  WARN_ON_ONCE(*child);
  *child = dev;
 }
 return 0;
}
