#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vchiq_mmal_instance {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {struct vchiq_mmal_instance* instance; } ;

/* Variables and functions */
 int MAX_BCM2835_CAMERAS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__** gdev ; 
 int /*<<< orphan*/  FUNC1 (struct vchiq_mmal_instance*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int camera;
	struct vchiq_mmal_instance *instance = gdev[0]->instance;

	for (camera = 0; camera < MAX_BCM2835_CAMERAS; camera++) {
		FUNC0(gdev[camera]);
		gdev[camera] = NULL;
	}
	FUNC1(instance);

	return 0;
}