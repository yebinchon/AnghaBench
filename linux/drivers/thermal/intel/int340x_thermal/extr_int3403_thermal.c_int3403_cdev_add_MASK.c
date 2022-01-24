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
struct TYPE_5__ {scalar_t__ count; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; } ;
struct int3403_priv {TYPE_3__* adev; struct int3403_cdev* priv; TYPE_1__* pdev; } ;
struct int3403_cdev {int /*<<< orphan*/  cdev; scalar_t__ max_state; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 struct int3403_cdev* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  int3403_cooling_ops ; 
 int /*<<< orphan*/  FUNC6 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct int3403_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct int3403_priv *priv)
{
	int result = 0;
	acpi_status status;
	struct int3403_cdev *obj;
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *p;

	obj = FUNC5(&priv->pdev->dev, sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return -ENOMEM;

	status = FUNC4(priv->adev->handle, "PPSS", NULL, &buf);
	if (FUNC0(status))
		return -ENODEV;

	p = buf.pointer;
	if (!p || (p->type != ACPI_TYPE_PACKAGE)) {
		FUNC7("Invalid PPSS data\n");
		FUNC6(buf.pointer);
		return -EFAULT;
	}

	priv->priv = obj;
	obj->max_state = p->package.count - 1;
	obj->cdev =
		FUNC8(FUNC3(priv->adev),
				priv, &int3403_cooling_ops);
	if (FUNC1(obj->cdev))
		result = FUNC2(obj->cdev);

	FUNC6(buf.pointer);
	/* TODO: add ACPI notification support */

	return result;
}