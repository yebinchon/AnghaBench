#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct vhost_net {TYPE_1__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct vhost_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct vhost_net*) ; 
 int FUNC6 (struct vhost_net*) ; 

__attribute__((used)) static long FUNC7(struct vhost_net *n)
{
	int r;

	FUNC0(&n->dev.mutex);
	if (FUNC2(&n->dev)) {
		r = -EBUSY;
		goto out;
	}
	r = FUNC6(n);
	if (r)
		goto out;
	r = FUNC3(&n->dev);
	if (r)
		FUNC4(n);
	FUNC5(n);
out:
	FUNC1(&n->dev.mutex);
	return r;
}