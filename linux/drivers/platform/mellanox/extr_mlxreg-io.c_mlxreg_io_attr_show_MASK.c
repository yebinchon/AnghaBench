#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlxreg_io_priv_data {TYPE_1__* pdata; } ;
struct mlxreg_core_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; struct mlxreg_core_data* data; } ;

/* Variables and functions */
 struct mlxreg_io_priv_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mlxreg_core_data*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (char*,char*,int) ; 
 TYPE_2__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		    char *buf)
{
	struct mlxreg_io_priv_data *priv = FUNC0(dev);
	int index = FUNC3(attr)->index;
	struct mlxreg_core_data *data = priv->pdata->data + index;
	u32 regval = 0;
	int ret;

	ret = FUNC1(priv->pdata->regmap, data, 0, true, &regval);
	if (ret)
		goto access_error;

	return FUNC2(buf, "%u\n", regval);

access_error:
	return ret;
}