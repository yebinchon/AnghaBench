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
struct zfcp_fc_wka_port {int /*<<< orphan*/  work; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct zfcp_fc_wka_port *wka_port)
{
	if (FUNC0(&wka_port->refcount) != 0)
		return;
	/* wait 10 milliseconds, other reqs might pop in */
	FUNC1(&wka_port->work, HZ / 100);
}