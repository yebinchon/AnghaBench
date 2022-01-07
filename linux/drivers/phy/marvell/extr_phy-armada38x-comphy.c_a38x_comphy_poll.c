
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct a38x_comphy_lane {int n; TYPE_1__* priv; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*,int ) ;
 int readl_relaxed_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int a38x_comphy_poll(struct a38x_comphy_lane *lane,
       unsigned int offset, u32 mask, u32 value)
{
 u32 val;
 int ret;

 ret = readl_relaxed_poll_timeout_atomic(lane->base + offset, val,
      (val & mask) == value,
      1000, 150000);

 if (ret)
  dev_err(lane->priv->dev,
   "comphy%u: timed out waiting for status\n", lane->n);

 return ret;
}
