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
struct tb_switch {int /*<<< orphan*/  dev; TYPE_1__* tb; int /*<<< orphan*/  dma_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(void *priv, unsigned int offset, void *val,
			      size_t bytes)
{
	struct tb_switch *sw = priv;
	int ret;

	FUNC3(&sw->dev);

	if (!FUNC1(&sw->tb->lock)) {
		ret = FUNC6();
		goto out;
	}

	ret = FUNC0(sw->dma_port, offset, val, bytes);
	FUNC2(&sw->tb->lock);

out:
	FUNC4(&sw->dev);
	FUNC5(&sw->dev);

	return ret;
}