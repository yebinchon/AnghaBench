#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  kobj; } ;
struct wmi_device {TYPE_7__ dev; } ;
struct TYPE_10__ {char* name; int mode; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  read; TYPE_1__ attr; } ;
struct bmof_priv {TYPE_3__* bmofdata; TYPE_4__ bmof_bin_attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  length; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_2__ buffer; } ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,struct bmof_priv*) ; 
 struct bmof_priv* FUNC2 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  read_bmof ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_3__* FUNC6 (struct wmi_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct wmi_device *wdev, const void *context)
{
	struct bmof_priv *priv;
	int ret;

	priv = FUNC2(&wdev->dev, sizeof(struct bmof_priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC1(&wdev->dev, priv);

	priv->bmofdata = FUNC6(wdev, 0);
	if (!priv->bmofdata) {
		FUNC0(&wdev->dev, "failed to read Binary MOF\n");
		return -EIO;
	}

	if (priv->bmofdata->type != ACPI_TYPE_BUFFER) {
		FUNC0(&wdev->dev, "Binary MOF is not a buffer\n");
		ret = -EIO;
		goto err_free;
	}

	FUNC4(&priv->bmof_bin_attr);
	priv->bmof_bin_attr.attr.name = "bmof";
	priv->bmof_bin_attr.attr.mode = 0400;
	priv->bmof_bin_attr.read = read_bmof;
	priv->bmof_bin_attr.size = priv->bmofdata->buffer.length;

	ret = FUNC5(&wdev->dev.kobj, &priv->bmof_bin_attr);
	if (ret)
		goto err_free;

	return 0;

 err_free:
	FUNC3(priv->bmofdata);
	return ret;
}