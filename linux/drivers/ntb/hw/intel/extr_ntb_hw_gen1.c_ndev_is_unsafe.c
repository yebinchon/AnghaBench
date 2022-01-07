
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ntb_dev {unsigned long unsafe_flags; unsigned long unsafe_flags_ignore; } ;



__attribute__((used)) static inline int ndev_is_unsafe(struct intel_ntb_dev *ndev,
     unsigned long flag)
{
 return !!(flag & ndev->unsafe_flags & ~ndev->unsafe_flags_ignore);
}
