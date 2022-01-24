#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_6__** attrs; } ;
struct mlxreg_io_priv_data {TYPE_5__** groups; TYPE_5__ group; TYPE_6__** mlxreg_io_attr; TYPE_4__* mlxreg_io_dev_attr; TYPE_3__* pdata; TYPE_1__* pdev; } ;
struct device_attribute {int dummy; } ;
struct attribute {int dummy; } ;
struct TYPE_14__ {scalar_t__ name; int /*<<< orphan*/  mode; } ;
struct TYPE_15__ {TYPE_6__ attr; } ;
struct TYPE_12__ {int index; TYPE_7__ dev_attr; } ;
struct TYPE_11__ {int counter; TYPE_2__* data; } ;
struct TYPE_10__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  label; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__** FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mlxreg_io_devattr_rw ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC5(struct mlxreg_io_priv_data *priv)
{
	int i;

	priv->group.attrs = FUNC2(&priv->pdev->dev,
					 priv->pdata->counter,
					 sizeof(struct attribute *),
					 GFP_KERNEL);
	if (!priv->group.attrs)
		return -ENOMEM;

	for (i = 0; i < priv->pdata->counter; i++) {
		priv->mlxreg_io_attr[i] =
				&priv->mlxreg_io_dev_attr[i].dev_attr.attr;
		FUNC3(&priv->mlxreg_io_dev_attr[i].dev_attr,
		       &mlxreg_io_devattr_rw, sizeof(struct device_attribute));

		/* Set attribute name as a label. */
		priv->mlxreg_io_attr[i]->name =
				FUNC1(&priv->pdev->dev, GFP_KERNEL,
					       priv->pdata->data[i].label);

		if (!priv->mlxreg_io_attr[i]->name) {
			FUNC0(&priv->pdev->dev, "Memory allocation failed for sysfs attribute %d.\n",
				i + 1);
			return -ENOMEM;
		}

		priv->mlxreg_io_dev_attr[i].dev_attr.attr.mode =
						priv->pdata->data[i].mode;
		priv->mlxreg_io_dev_attr[i].dev_attr.attr.name =
					priv->mlxreg_io_attr[i]->name;
		priv->mlxreg_io_dev_attr[i].index = i;
		FUNC4(&priv->mlxreg_io_dev_attr[i].dev_attr.attr);
	}

	priv->group.attrs = priv->mlxreg_io_attr;
	priv->groups[0] = &priv->group;
	priv->groups[1] = NULL;

	return 0;
}