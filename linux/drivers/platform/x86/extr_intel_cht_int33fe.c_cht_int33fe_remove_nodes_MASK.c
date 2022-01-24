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
struct cht_int33fe_data {TYPE_1__* dp; } ;
struct TYPE_5__ {int /*<<< orphan*/ * node; } ;
struct TYPE_4__ {int /*<<< orphan*/ * secondary; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__ mux_ref ; 
 int /*<<< orphan*/  nodes ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cht_int33fe_data *data)
{
	FUNC2(nodes);

	if (mux_ref.node) {
		FUNC0(FUNC1(mux_ref.node));
		mux_ref.node = NULL;
	}

	if (data->dp) {
		data->dp->secondary = NULL;
		FUNC0(data->dp);
		data->dp = NULL;
	}
}