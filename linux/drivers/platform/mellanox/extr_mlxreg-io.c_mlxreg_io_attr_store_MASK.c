#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlxreg_io_priv_data {TYPE_2__* pdev; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int /*<<< orphan*/  reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int index; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; struct mlxreg_core_data* data; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t MLXREG_IO_ATT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mlxreg_io_priv_data* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,size_t,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct mlxreg_core_data*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t len)
{
	struct mlxreg_io_priv_data *priv = FUNC1(dev);
	int index = FUNC5(attr)->index;
	struct mlxreg_core_data *data = priv->pdata->data + index;
	u32 input_val, regval;
	int ret;

	if (len > MLXREG_IO_ATT_SIZE)
		return -EINVAL;

	/* Convert buffer to input value. */
	ret = FUNC2(buf, len, &input_val);
	if (ret)
		return ret;

	ret = FUNC3(priv->pdata->regmap, data, input_val, false,
				&regval);
	if (ret)
		goto access_error;

	ret = FUNC4(priv->pdata->regmap, data->reg, regval);
	if (ret)
		goto access_error;

	return len;

access_error:
	FUNC0(&priv->pdev->dev, "Bus access error\n");
	return ret;
}