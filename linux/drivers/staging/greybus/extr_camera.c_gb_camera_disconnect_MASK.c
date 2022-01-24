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
struct gb_camera {int /*<<< orphan*/  module; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_camera*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gb_bundle*) ; 
 int FUNC3 (struct gb_bundle*) ; 
 struct gb_camera* FUNC4 (struct gb_bundle*) ; 

__attribute__((used)) static void FUNC5(struct gb_bundle *bundle)
{
	struct gb_camera *gcam = FUNC4(bundle);
	int ret;

	ret = FUNC3(bundle);
	if (ret)
		FUNC2(bundle);

	FUNC0(gcam);
	FUNC1(&gcam->module);
}