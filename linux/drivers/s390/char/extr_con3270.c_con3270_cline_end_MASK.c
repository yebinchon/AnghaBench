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
struct string {int len; int /*<<< orphan*/  update; int /*<<< orphan*/  list; scalar_t__* string; } ;
struct TYPE_3__ {int cols; scalar_t__* ascebc; } ;
struct con3270 {TYPE_2__* cline; TYPE_1__ view; } ;
struct TYPE_4__ {int len; int /*<<< orphan*/  update; int /*<<< orphan*/  list; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 scalar_t__ TO_RA ; 
 struct string* FUNC0 (struct con3270*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC5(struct con3270 *cp)
{
	struct string *s;
	unsigned int size;

	/* Copy cline. */
	size = (cp->cline->len < cp->view.cols - 5) ?
		cp->cline->len + 4 : cp->view.cols;
	s = FUNC0(cp, size);
	FUNC4(s->string, cp->cline->string, cp->cline->len);
	if (cp->cline->len < cp->view.cols - 5) {
		s->string[s->len - 4] = TO_RA;
		s->string[s->len - 1] = 0;
	} else {
		while (--size >= cp->cline->len)
			s->string[size] = cp->view.ascebc[' '];
	}
	/* Replace cline with allocated line s and reset cline. */
	FUNC1(&s->list, &cp->cline->list);
	FUNC2(&cp->cline->list);
	if (!FUNC3(&cp->cline->update)) {
		FUNC1(&s->update, &cp->cline->update);
		FUNC2(&cp->cline->update);
	}
	cp->cline->len = 0;
}