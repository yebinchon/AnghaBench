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
struct bcm2835_audio_instance {int /*<<< orphan*/  vchi_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  vchi_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bcm2835_audio_instance *instance)
{
	int status;

	FUNC1(&instance->vchi_mutex);
	FUNC4(instance->vchi_handle);

	/* Close all VCHI service connections */
	status = FUNC3(instance->vchi_handle);
	if (status) {
		FUNC0(instance->dev,
			"failed to close VCHI service connection (status=%d)\n",
			status);
	}

	FUNC2(&instance->vchi_mutex);
}