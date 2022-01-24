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
struct mux_tx {struct mux_tx* buf; int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MUX_TX_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mux_tx*) ; 
 struct mux_tx* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mux_tx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mux_tx *FUNC5(int len)
{
	struct mux_tx *t;

	t = FUNC2(sizeof(*t), GFP_ATOMIC);
	if (!t)
		return NULL;

	t->urb = FUNC3(0, GFP_ATOMIC);
	t->buf = FUNC1(MUX_TX_MAX_SIZE, GFP_ATOMIC);
	if (!t->urb || !t->buf) {
		FUNC4(t->urb);
		FUNC0(t->buf);
		FUNC0(t);
		return NULL;
	}

	return t;
}