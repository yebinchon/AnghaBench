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
struct tree_mod_elem {int op; int slot; int /*<<< orphan*/  node; int /*<<< orphan*/  generation; int /*<<< orphan*/  blockptr; int /*<<< orphan*/  key; int /*<<< orphan*/  logical; } ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum mod_log_op { ____Placeholder_mod_log_op } mod_log_op ;

/* Variables and functions */
 int MOD_LOG_KEY_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,int) ; 
 struct tree_mod_elem* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tree_mod_elem *
FUNC5(struct extent_buffer *eb, int slot,
		    enum mod_log_op op, gfp_t flags)
{
	struct tree_mod_elem *tm;

	tm = FUNC4(sizeof(*tm), flags);
	if (!tm)
		return NULL;

	tm->logical = eb->start;
	if (op != MOD_LOG_KEY_ADD) {
		FUNC2(eb, &tm->key, slot);
		tm->blockptr = FUNC1(eb, slot);
	}
	tm->op = op;
	tm->slot = slot;
	tm->generation = FUNC3(eb, slot);
	FUNC0(&tm->node);

	return tm;
}