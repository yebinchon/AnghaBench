
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct nvme_ctrl {scalar_t__ ps_max_latency_us; } ;
struct device {int dummy; } ;
typedef int s32 ;




 scalar_t__ U64_MAX ;
 struct nvme_ctrl* dev_get_drvdata (struct device*) ;
 int nvme_configure_apst (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_set_latency_tolerance(struct device *dev, s32 val)
{
 struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
 u64 latency;

 switch (val) {
 case 128:
 case 129:
  latency = U64_MAX;
  break;

 default:
  latency = val;
 }

 if (ctrl->ps_max_latency_us != latency) {
  ctrl->ps_max_latency_us = latency;
  nvme_configure_apst(ctrl);
 }
}
