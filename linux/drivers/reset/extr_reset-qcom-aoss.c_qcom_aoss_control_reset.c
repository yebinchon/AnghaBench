
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int qcom_aoss_control_assert (struct reset_controller_dev*,unsigned long) ;
 int qcom_aoss_control_deassert (struct reset_controller_dev*,unsigned long) ;

__attribute__((used)) static int qcom_aoss_control_reset(struct reset_controller_dev *rcdev,
     unsigned long idx)
{
 qcom_aoss_control_assert(rcdev, idx);

 return qcom_aoss_control_deassert(rcdev, idx);
}
