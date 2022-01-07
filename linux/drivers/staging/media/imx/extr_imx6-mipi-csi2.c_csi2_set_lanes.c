
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_data_lanes; } ;
struct csi2_dev {scalar_t__ base; TYPE_1__ bus; } ;


 scalar_t__ CSI2_N_LANES ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void csi2_set_lanes(struct csi2_dev *csi2)
{
 int lanes = csi2->bus.num_data_lanes;

 writel(lanes - 1, csi2->base + CSI2_N_LANES);
}
