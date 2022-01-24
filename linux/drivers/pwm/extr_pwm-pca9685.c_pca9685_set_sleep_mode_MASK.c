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
struct pca9685 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE1_SLEEP ; 
 int /*<<< orphan*/  PCA9685_MODE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct pca9685 *pca, bool enable)
{
	FUNC0(pca->regmap, PCA9685_MODE1,
			   MODE1_SLEEP, enable ? MODE1_SLEEP : 0);
	if (!enable) {
		/* Wait 500us for the oscillator to be back up */
		FUNC1(500);
	}
}