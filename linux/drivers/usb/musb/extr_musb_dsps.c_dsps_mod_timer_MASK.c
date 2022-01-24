#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct musb {int /*<<< orphan*/  dev_timer; } ;
struct dsps_glue {TYPE_1__* wrp; int /*<<< orphan*/  musb; } ;
struct TYPE_2__ {int poll_timeout; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int) ; 
 struct musb* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dsps_glue *glue, int wait_ms)
{
	struct musb *musb = FUNC2(glue->musb);
	int wait;

	if (wait_ms < 0)
		wait = FUNC1(glue->wrp->poll_timeout);
	else
		wait = FUNC1(wait_ms);

	FUNC0(&musb->dev_timer, jiffies + wait);
}