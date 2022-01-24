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
struct esas2r_sas_nvram {int dummy; } ;
struct esas2r_adapter {int /*<<< orphan*/  nvram_semaphore; int /*<<< orphan*/  nvram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLS_OFFSET_NVR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct esas2r_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct esas2r_adapter *a)
{
	bool result;

	if (FUNC0(&a->nvram_semaphore))
		return false;

	if (!FUNC3(a, a->nvram, FLS_OFFSET_NVR,
				     sizeof(struct esas2r_sas_nvram))) {
		FUNC1("NVRAM read failed, using defaults");
		return false;
	}

	result = FUNC2(a);

	FUNC4(&a->nvram_semaphore);

	return result;
}