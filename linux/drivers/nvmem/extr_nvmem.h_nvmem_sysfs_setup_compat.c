
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_device {int dummy; } ;
struct nvmem_config {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static inline int nvmem_sysfs_setup_compat(struct nvmem_device *nvmem,
          const struct nvmem_config *config)
{
 return -ENOSYS;
}
