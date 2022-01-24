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
struct TYPE_2__ {scalar_t__ expires; } ;
struct yenta_socket {TYPE_1__ poll_timer; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct yenta_socket* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  poll_timer ; 
 struct yenta_socket* socket ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct yenta_socket *socket = FUNC1(socket, t, poll_timer);

	FUNC2(0, (void *)socket);
	socket->poll_timer.expires = jiffies + HZ;
	FUNC0(&socket->poll_timer);
}