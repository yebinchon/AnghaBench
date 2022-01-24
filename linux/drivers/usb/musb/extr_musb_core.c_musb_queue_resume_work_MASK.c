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
struct musb_pending_work {int (* callback ) (struct musb*,void*) ;int /*<<< orphan*/  node; void* data; } ;
struct musb {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  controller; int /*<<< orphan*/  pending_list; scalar_t__ is_runtime_suspended; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int (*) (struct musb*,void*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct musb_pending_work*) ; 
 struct musb_pending_work* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct musb *musb,
			   int (*callback)(struct musb *musb, void *data),
			   void *data)
{
	struct musb_pending_work *w;
	unsigned long flags;
	int error;

	if (FUNC0(!callback))
		return -EINVAL;

	if (FUNC5(musb->controller))
		return callback(musb, data);

	w = FUNC3(musb->controller, sizeof(*w), GFP_ATOMIC);
	if (!w)
		return -ENOMEM;

	w->callback = callback;
	w->data = data;
	FUNC6(&musb->list_lock, flags);
	if (musb->is_runtime_suspended) {
		FUNC4(&w->node, &musb->pending_list);
		error = 0;
	} else {
		FUNC1(musb->controller, "could not add resume work %p\n",
			callback);
		FUNC2(musb->controller, w);
		error = -EINPROGRESS;
	}
	FUNC7(&musb->list_lock, flags);

	return error;
}