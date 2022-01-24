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
struct urb {int /*<<< orphan*/  status; struct rt2x00_async_read_data* context; } ;
struct rt2x00_async_read_data {TYPE_1__* rt2x00dev; int /*<<< orphan*/  reg; scalar_t__ (* callback ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  anchor; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_async_read_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

__attribute__((used)) static void FUNC6(struct urb *urb)
{
	struct rt2x00_async_read_data *rd = urb->context;
	if (rd->callback(rd->rt2x00dev, urb->status, FUNC1(rd->reg))) {
		FUNC3(urb, rd->rt2x00dev->anchor);
		if (FUNC4(urb, GFP_ATOMIC) < 0) {
			FUNC5(urb);
			FUNC0(rd);
		}
	} else
		FUNC0(rd);
}