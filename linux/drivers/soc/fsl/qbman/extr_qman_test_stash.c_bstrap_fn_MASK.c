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
struct bstrap {int (* fn ) () ;int /*<<< orphan*/  started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(void *bs)
{
	struct bstrap *bstrap = bs;
	int err;

	FUNC0(&bstrap->started);
	err = bstrap->fn();
	if (err)
		return err;
	while (!FUNC1())
		FUNC2(20);
	return 0;
}