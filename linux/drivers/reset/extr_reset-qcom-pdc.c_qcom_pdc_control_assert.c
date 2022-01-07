
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reset_controller_dev {int dummy; } ;
struct qcom_pdc_reset_data {int regmap; } ;
struct TYPE_2__ {int bit; } ;


 int BIT (int ) ;
 int RPMH_PDC_SYNC_RESET ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_1__* sdm845_pdc_resets ;
 struct qcom_pdc_reset_data* to_qcom_pdc_reset_data (struct reset_controller_dev*) ;

__attribute__((used)) static int qcom_pdc_control_assert(struct reset_controller_dev *rcdev,
     unsigned long idx)
{
 struct qcom_pdc_reset_data *data = to_qcom_pdc_reset_data(rcdev);

 return regmap_update_bits(data->regmap, RPMH_PDC_SYNC_RESET,
      BIT(sdm845_pdc_resets[idx].bit),
      BIT(sdm845_pdc_resets[idx].bit));
}
