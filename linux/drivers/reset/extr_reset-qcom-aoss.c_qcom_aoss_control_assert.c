
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct qcom_aoss_reset_map {scalar_t__ reg; } ;
struct qcom_aoss_reset_data {scalar_t__ base; TYPE_1__* desc; } ;
struct TYPE_2__ {struct qcom_aoss_reset_map* resets; } ;


 struct qcom_aoss_reset_data* to_qcom_aoss_reset_data (struct reset_controller_dev*) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int qcom_aoss_control_assert(struct reset_controller_dev *rcdev,
        unsigned long idx)
{
 struct qcom_aoss_reset_data *data = to_qcom_aoss_reset_data(rcdev);
 const struct qcom_aoss_reset_map *map = &data->desc->resets[idx];

 writel(1, data->base + map->reg);

 usleep_range(200, 300);
 return 0;
}
