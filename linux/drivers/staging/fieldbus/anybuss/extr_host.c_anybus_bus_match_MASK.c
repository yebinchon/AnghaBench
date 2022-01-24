#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct anybuss_client_driver {scalar_t__ anybus_id; } ;
struct anybuss_client {int /*<<< orphan*/  anybus_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct anybuss_client* FUNC1 (struct device*) ; 
 struct anybuss_client_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
			    struct device_driver *drv)
{
	struct anybuss_client_driver *adrv =
		FUNC2(drv);
	struct anybuss_client *adev =
		FUNC1(dev);

	return adrv->anybus_id == FUNC0(adev->anybus_id);
}