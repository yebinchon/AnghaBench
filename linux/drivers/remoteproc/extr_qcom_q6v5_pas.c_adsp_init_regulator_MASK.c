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
struct qcom_adsp {void* px_supply; int /*<<< orphan*/  dev; void* cx_supply; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 

__attribute__((used)) static int FUNC5(struct qcom_adsp *adsp)
{
	adsp->cx_supply = FUNC3(adsp->dev, "cx");
	if (FUNC0(adsp->cx_supply))
		return FUNC1(adsp->cx_supply);

	FUNC4(adsp->cx_supply, 100000);

	adsp->px_supply = FUNC3(adsp->dev, "px");
	return FUNC2(adsp->px_supply);
}