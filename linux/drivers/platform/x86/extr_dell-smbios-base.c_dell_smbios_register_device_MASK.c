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
struct smbios_device {int /*<<< orphan*/  list; void* call_fn; struct device* device; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct smbios_device* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smbios_device_list ; 
 int /*<<< orphan*/  smbios_mutex ; 

int FUNC6(struct device *d, void *call_fn)
{
	struct smbios_device *priv;

	priv = FUNC1(d, sizeof(struct smbios_device), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	FUNC2(d);
	priv->device = d;
	priv->call_fn = call_fn;
	FUNC4(&smbios_mutex);
	FUNC3(&priv->list, &smbios_device_list);
	FUNC5(&smbios_mutex);
	FUNC0(d, "Added device: %s\n", d->driver->name);
	return 0;
}