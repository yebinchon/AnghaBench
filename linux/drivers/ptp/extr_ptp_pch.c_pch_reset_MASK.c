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
struct pch_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pch_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_dev*) ; 

__attribute__((used)) static void FUNC2(struct pch_dev *chip)
{
	/* Reset Hardware Assist */
	FUNC0(chip);

	/* enable all 32 bits in system time registers */
	FUNC1(chip);
}