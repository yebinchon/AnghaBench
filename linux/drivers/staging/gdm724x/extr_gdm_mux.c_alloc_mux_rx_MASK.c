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
struct mux_rx {struct mux_rx* buf; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MUX_RX_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mux_rx*) ; 
 struct mux_rx* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mux_rx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mux_rx *FUNC5(void)
{
	struct mux_rx *r;

	r = FUNC2(sizeof(*r), GFP_KERNEL);
	if (!r)
		return NULL;

	r->urb = FUNC3(0, GFP_KERNEL);
	r->buf = FUNC1(MUX_RX_MAX_SIZE, GFP_KERNEL);
	if (!r->urb || !r->buf) {
		FUNC4(r->urb);
		FUNC0(r->buf);
		FUNC0(r);
		return NULL;
	}

	return r;
}