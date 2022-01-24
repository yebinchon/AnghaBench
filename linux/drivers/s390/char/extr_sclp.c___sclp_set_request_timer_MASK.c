#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void (* function ) (struct timer_list*) ;scalar_t__ expires; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 TYPE_1__ sclp_request_timer ; 

__attribute__((used)) static inline void
FUNC2(unsigned long time, void (*cb)(struct timer_list *))
{
	FUNC1(&sclp_request_timer);
	sclp_request_timer.function = cb;
	sclp_request_timer.expires = jiffies + time;
	FUNC0(&sclp_request_timer);
}