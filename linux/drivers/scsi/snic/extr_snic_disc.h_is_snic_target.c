
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ snic_tgt_dev_release ;

__attribute__((used)) static inline int
is_snic_target(struct device *dev)
{
 return dev->release == snic_tgt_dev_release;
}
