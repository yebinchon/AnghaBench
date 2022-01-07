
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int nvme_toggle_streams (struct nvme_ctrl*,int) ;

__attribute__((used)) static int nvme_enable_streams(struct nvme_ctrl *ctrl)
{
 return nvme_toggle_streams(ctrl, 1);
}
