#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vhost_umem {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct vhost_test {TYPE_1__ dev; } ;

/* Variables and functions */
 long ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct vhost_umem*) ; 
 struct vhost_umem* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vhost_test*) ; 
 int /*<<< orphan*/  FUNC7 (struct vhost_test*,void**) ; 

__attribute__((used)) static long FUNC8(struct vhost_test *n)
{
	void *priv = NULL;
	long err;
	struct vhost_umem *umem;

	FUNC0(&n->dev.mutex);
	err = FUNC2(&n->dev);
	if (err)
		goto done;
	umem = FUNC4();
	if (!umem) {
		err = -ENOMEM;
		goto done;
	}
	FUNC7(n, &priv);
	FUNC6(n);
	FUNC5(&n->dev);
	FUNC3(&n->dev, umem);
done:
	FUNC1(&n->dev.mutex);
	return err;
}