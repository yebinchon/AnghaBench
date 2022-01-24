#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* vha; int /*<<< orphan*/  port_name; } ;
typedef  TYPE_2__ fc_port_t ;
struct TYPE_4__ {int /*<<< orphan*/  port_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC1(fc_port_t *fcport)
{
	if (FUNC0(fcport->port_name) <
	    FUNC0(fcport->vha->port_name))
		return true;
	else
		return false;
}