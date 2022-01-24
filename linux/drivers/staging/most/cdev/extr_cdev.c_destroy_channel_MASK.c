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
struct comp_channel {int /*<<< orphan*/  fifo; int /*<<< orphan*/  devno; } ;
struct TYPE_2__ {int /*<<< orphan*/  minor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ comp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct comp_channel*) ; 

__attribute__((used)) static void FUNC4(struct comp_channel *c)
{
	FUNC1(&comp.minor_id, FUNC0(c->devno));
	FUNC2(&c->fifo);
	FUNC3(c);
}