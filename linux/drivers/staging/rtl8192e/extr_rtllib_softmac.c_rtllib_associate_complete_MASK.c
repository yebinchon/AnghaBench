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
struct rtllib_device {int /*<<< orphan*/  associate_complete_wq; int /*<<< orphan*/  state; int /*<<< orphan*/  associate_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTLLIB_LINKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rtllib_device *ieee)
{
	FUNC0(&ieee->associate_timer);

	ieee->state = RTLLIB_LINKED;
	FUNC1(ieee);

	FUNC2(&ieee->associate_complete_wq);
}