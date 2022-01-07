
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
struct arm_ccn {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int * arm_ccn_pmu_get_cmp_mask (struct arm_ccn*,int ) ;
 int dev_get_drvdata (struct device*) ;
 int kstrtoull (char const*,int ,int *) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static ssize_t arm_ccn_pmu_cmp_mask_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(dev_get_drvdata(dev));
 u64 *mask = arm_ccn_pmu_get_cmp_mask(ccn, attr->attr.name);
 int err = -EINVAL;

 if (mask)
  err = kstrtoull(buf, 0, mask);

 return err ? err : count;
}
