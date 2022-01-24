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
struct ab8500_usb {void* v_musb; int /*<<< orphan*/  dev; void* v_ulpi; void* v_ape; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ab8500_usb *ab)
{
	int err;

	ab->v_ape = FUNC3(ab->dev, "v-ape");
	if (FUNC0(ab->v_ape)) {
		FUNC2(ab->dev, "Could not get v-ape supply\n");
		err = FUNC1(ab->v_ape);
		return err;
	}

	ab->v_ulpi = FUNC3(ab->dev, "vddulpivio18");
	if (FUNC0(ab->v_ulpi)) {
		FUNC2(ab->dev, "Could not get vddulpivio18 supply\n");
		err = FUNC1(ab->v_ulpi);
		return err;
	}

	ab->v_musb = FUNC3(ab->dev, "musb_1v8");
	if (FUNC0(ab->v_musb)) {
		FUNC2(ab->dev, "Could not get musb_1v8 supply\n");
		err = FUNC1(ab->v_musb);
		return err;
	}

	return 0;
}