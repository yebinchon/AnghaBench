#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ipw_dev {TYPE_2__* link; scalar_t__ attr_memory; scalar_t__ common_memory; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct ipw_dev *ipw)
{
	FUNC3(ipw->link->resource[0]->start,
		       FUNC4(ipw->link->resource[0]));
	if (ipw->common_memory) {
		FUNC2(ipw->link->resource[2]->start,
				FUNC4(ipw->link->resource[2]));
		FUNC0(ipw->common_memory);
	}
	if (ipw->attr_memory) {
		FUNC2(ipw->link->resource[3]->start,
				FUNC4(ipw->link->resource[3]));
		FUNC0(ipw->attr_memory);
	}
	FUNC1(ipw->link);
}