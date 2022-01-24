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
struct zynqmp_reset_data {TYPE_1__* eemi_ops; } ;
struct reset_controller_dev {int dummy; } ;
struct TYPE_2__ {int (* reset_get_status ) (scalar_t__,int*) ;} ;

/* Variables and functions */
 scalar_t__ ZYNQMP_RESET_ID ; 
 int FUNC0 (scalar_t__,int*) ; 
 struct zynqmp_reset_data* FUNC1 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC2(struct reset_controller_dev *rcdev,
			       unsigned long id)
{
	struct zynqmp_reset_data *priv = FUNC1(rcdev);
	int val, err;

	err = priv->eemi_ops->reset_get_status(ZYNQMP_RESET_ID + id, &val);
	if (err)
		return err;

	return val;
}