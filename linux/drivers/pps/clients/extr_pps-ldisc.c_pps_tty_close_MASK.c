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
struct tty_struct {int dummy; } ;
struct pps_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct pps_device* FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct pps_device*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty)
{
	struct pps_device *pps = FUNC3(tty);

	FUNC1(tty);

	if (FUNC0(!pps))
		return;

	FUNC2(pps->dev, "removed\n");
	FUNC4(pps);
}