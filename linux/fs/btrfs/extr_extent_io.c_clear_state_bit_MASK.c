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
typedef  scalar_t__ u64 ;
struct extent_state {unsigned int state; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  wq; } ;
struct extent_io_tree {scalar_t__ dirty_bytes; int /*<<< orphan*/  state; scalar_t__ private_data; } ;
struct extent_changeset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EXTENT_CTLBITS ; 
 unsigned int EXTENT_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct extent_state*,unsigned int,struct extent_changeset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct extent_state*,unsigned int*) ; 
 scalar_t__ FUNC5 (struct extent_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_state*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_io_tree*,struct extent_state*) ; 
 struct extent_state* FUNC9 (struct extent_state*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_state *FUNC12(struct extent_io_tree *tree,
					    struct extent_state *state,
					    unsigned *bits, int wake,
					    struct extent_changeset *changeset)
{
	struct extent_state *next;
	unsigned bits_to_clear = *bits & ~EXTENT_CTLBITS;
	int ret;

	if ((bits_to_clear & EXTENT_DIRTY) && (state->state & EXTENT_DIRTY)) {
		u64 range = state->end - state->start + 1;
		FUNC2(range > tree->dirty_bytes);
		tree->dirty_bytes -= range;
	}

	if (tree->private_data && FUNC7(tree->private_data))
		FUNC4(tree->private_data, state, bits);

	ret = FUNC3(state, bits_to_clear, changeset, 0);
	FUNC0(ret < 0);
	state->state &= ~bits_to_clear;
	if (wake)
		FUNC11(&state->wq);
	if (state->state == 0) {
		next = FUNC9(state);
		if (FUNC5(state)) {
			FUNC10(&state->rb_node, &tree->state);
			FUNC1(&state->rb_node);
			FUNC6(state);
		} else {
			FUNC2(1);
		}
	} else {
		FUNC8(tree, state);
		next = FUNC9(state);
	}
	return next;
}