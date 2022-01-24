#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct reset_controller_dev {int dummy; } ;
struct qcom_pdc_reset_data {int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPMH_PDC_SYNC_RESET ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* sdm845_pdc_resets ; 
 struct qcom_pdc_reset_data* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
					unsigned long idx)
{
	struct qcom_pdc_reset_data *data = FUNC2(rcdev);

	return FUNC1(data->regmap, RPMH_PDC_SYNC_RESET,
				  FUNC0(sdm845_pdc_resets[idx].bit),
				  FUNC0(sdm845_pdc_resets[idx].bit));
}