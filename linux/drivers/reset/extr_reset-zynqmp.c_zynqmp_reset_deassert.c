
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zynqmp_reset_data {TYPE_1__* eemi_ops; } ;
struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {int (* reset_assert ) (scalar_t__,int ) ;} ;


 int PM_RESET_ACTION_RELEASE ;
 scalar_t__ ZYNQMP_RESET_ID ;
 int stub1 (scalar_t__,int ) ;
 struct zynqmp_reset_data* to_zynqmp_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int zynqmp_reset_deassert(struct reset_controller_dev *rcdev,
     unsigned long id)
{
 struct zynqmp_reset_data *priv = to_zynqmp_reset_data(rcdev);

 return priv->eemi_ops->reset_assert(ZYNQMP_RESET_ID + id,
         PM_RESET_ACTION_RELEASE);
}
