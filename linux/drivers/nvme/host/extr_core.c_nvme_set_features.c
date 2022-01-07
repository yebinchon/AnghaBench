
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_ctrl {int dummy; } ;


 int nvme_admin_set_features ;
 int nvme_features (struct nvme_ctrl*,int ,unsigned int,unsigned int,void*,size_t,int *) ;

int nvme_set_features(struct nvme_ctrl *dev, unsigned int fid,
        unsigned int dword11, void *buffer, size_t buflen,
        u32 *result)
{
 return nvme_features(dev, nvme_admin_set_features, fid, dword11, buffer,
        buflen, result);
}
