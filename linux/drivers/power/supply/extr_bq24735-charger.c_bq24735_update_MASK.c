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
struct bq24735 {int /*<<< orphan*/  charger; int /*<<< orphan*/  lock; scalar_t__ charging; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bq24735*) ; 
 int /*<<< orphan*/  FUNC1 (struct bq24735*) ; 
 int /*<<< orphan*/  FUNC2 (struct bq24735*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bq24735 *charger)
{
	FUNC3(&charger->lock);

	if (charger->charging && FUNC0(charger))
		FUNC2(charger);
	else
		FUNC1(charger);

	FUNC4(&charger->lock);

	FUNC5(charger->charger);
}