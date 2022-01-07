
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int device; } ;


 int put_device (int ) ;

__attribute__((used)) static inline void nvme_put_ctrl(struct nvme_ctrl *ctrl)
{
 put_device(ctrl->device);
}
