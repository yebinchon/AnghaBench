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
struct iss_device {void* iss_ctrlclk; int /*<<< orphan*/  dev; void* iss_fck; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct iss_device *iss)
{
	iss->iss_fck = FUNC3(iss->dev, "iss_fck");
	if (FUNC0(iss->iss_fck)) {
		FUNC2(iss->dev, "Unable to get iss_fck clock info\n");
		return FUNC1(iss->iss_fck);
	}

	iss->iss_ctrlclk = FUNC3(iss->dev, "iss_ctrlclk");
	if (FUNC0(iss->iss_ctrlclk)) {
		FUNC2(iss->dev, "Unable to get iss_ctrlclk clock info\n");
		return FUNC1(iss->iss_ctrlclk);
	}

	return 0;
}