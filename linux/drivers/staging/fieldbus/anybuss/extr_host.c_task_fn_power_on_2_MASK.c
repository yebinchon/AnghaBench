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
struct anybuss_host {int power_on; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  card_boot; } ;
struct ab_task {scalar_t__ start_jiffies; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ETIMEDOUT ; 
 scalar_t__ TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct anybuss_host*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct anybuss_host *cd,
			      struct ab_task *t)
{
	if (FUNC0(&cd->card_boot)) {
		cd->power_on = true;
		return 0;
	}
	if (FUNC4(jiffies, t->start_jiffies + TIMEOUT)) {
		FUNC2(cd->irq);
		FUNC3(cd);
		FUNC1(cd->dev, "power on timed out");
		return -ETIMEDOUT;
	}
	return -EINPROGRESS;
}