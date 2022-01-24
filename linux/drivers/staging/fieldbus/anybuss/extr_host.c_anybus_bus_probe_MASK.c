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
struct device {int /*<<< orphan*/  driver; } ;
struct anybuss_client_driver {int (* probe ) (struct anybuss_client*) ;} ;
struct anybuss_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct anybuss_client*) ; 
 struct anybuss_client* FUNC1 (struct device*) ; 
 struct anybuss_client_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct anybuss_client_driver *adrv =
		FUNC2(dev->driver);
	struct anybuss_client *adev =
		FUNC1(dev);

	if (!adrv->probe)
		return -ENODEV;
	return adrv->probe(adev);
}