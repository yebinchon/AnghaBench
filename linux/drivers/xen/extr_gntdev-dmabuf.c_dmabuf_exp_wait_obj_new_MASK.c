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
struct gntdev_dmabuf_wait_obj {int /*<<< orphan*/  next; struct gntdev_dmabuf* gntdev_dmabuf; int /*<<< orphan*/  completion; } ;
struct gntdev_dmabuf_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  exp_wait_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {TYPE_1__ exp; } ;
struct gntdev_dmabuf {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct gntdev_dmabuf_wait_obj* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dmabuf_exp_release ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gntdev_dmabuf_wait_obj* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gntdev_dmabuf_wait_obj *
FUNC7(struct gntdev_dmabuf_priv *priv,
			struct gntdev_dmabuf *gntdev_dmabuf)
{
	struct gntdev_dmabuf_wait_obj *obj;

	obj = FUNC3(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return FUNC0(-ENOMEM);

	FUNC1(&obj->completion);
	obj->gntdev_dmabuf = gntdev_dmabuf;

	FUNC5(&priv->lock);
	FUNC4(&obj->next, &priv->exp_wait_list);
	/* Put our reference and wait for gntdev_dmabuf's release to fire. */
	FUNC2(&gntdev_dmabuf->u.exp.refcount, dmabuf_exp_release);
	FUNC6(&priv->lock);
	return obj;
}