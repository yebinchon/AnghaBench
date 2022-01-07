
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ns {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static inline int nvme_nvm_ioctl(struct nvme_ns *ns, unsigned int cmd,
       unsigned long arg)
{
 return -ENOTTY;
}
