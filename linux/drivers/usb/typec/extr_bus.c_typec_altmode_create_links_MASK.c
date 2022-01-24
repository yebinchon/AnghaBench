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
struct device {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {struct device dev; } ;
struct altmode {TYPE_3__ adev; TYPE_2__* partner; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_5__ {TYPE_1__ adev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(struct altmode *alt)
{
	struct device *port_dev = &alt->partner->adev.dev;
	struct device *dev = &alt->adev.dev;
	int err;

	err = FUNC0(&dev->kobj, &port_dev->kobj, "port");
	if (err)
		return err;

	err = FUNC0(&port_dev->kobj, &dev->kobj, "partner");
	if (err)
		FUNC1(&dev->kobj, "port");

	return err;
}