#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct typec_port {int dummy; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct typec_altmode {TYPE_1__ dev; } ;
struct TYPE_7__ {struct TYPE_7__* parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 struct typec_port* FUNC3 (TYPE_2__*) ; 

struct typec_port *FUNC4(struct typec_altmode *alt)
{
	if (FUNC1(alt->dev.parent))
		return FUNC3(alt->dev.parent->parent->parent);
	if (FUNC0(alt->dev.parent))
		return FUNC3(alt->dev.parent->parent);
	if (FUNC2(alt->dev.parent))
		return FUNC3(alt->dev.parent);

	return NULL;
}