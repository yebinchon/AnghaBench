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
struct urb {TYPE_1__* dev; int /*<<< orphan*/  status; struct mux_tx* context; } ;
struct mux_tx {int /*<<< orphan*/  cb_data; int /*<<< orphan*/  (* callback ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mux_tx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct urb *urb)
{
	struct mux_tx *t = urb->context;

	if (urb->status == -ECONNRESET) {
		FUNC0(&urb->dev->dev, "CONNRESET\n");
		FUNC1(t);
		return;
	}

	if (t->callback)
		t->callback(t->cb_data);

	FUNC1(t);
}