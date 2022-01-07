
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {unsigned long long cap; } ;


 int NVMET_QUEUE_SIZE ;

__attribute__((used)) static void nvmet_init_cap(struct nvmet_ctrl *ctrl)
{

 ctrl->cap = (1ULL << 37);

 ctrl->cap |= (15ULL << 24);

 ctrl->cap |= NVMET_QUEUE_SIZE - 1;
}
