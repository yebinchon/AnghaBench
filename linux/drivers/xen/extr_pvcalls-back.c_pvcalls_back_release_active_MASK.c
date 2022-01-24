#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xenbus_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  register_work; } ;
struct sock_mapping {void* bytes; TYPE_3__* sock; int /*<<< orphan*/  irq; scalar_t__ ring; TYPE_2__ ioworker; int /*<<< orphan*/  release; int /*<<< orphan*/  saved_data_ready; } ;
struct pvcalls_fedata {int dummy; } ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/ * sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sock_mapping*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*,void*) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev,
				       struct pvcalls_fedata *fedata,
				       struct sock_mapping *map)
{
	FUNC1(map->irq);
	if (map->sock->sk != NULL) {
		FUNC6(&map->sock->sk->sk_callback_lock);
		map->sock->sk->sk_user_data = NULL;
		map->sock->sk->sk_data_ready = map->saved_data_ready;
		FUNC7(&map->sock->sk->sk_callback_lock);
	}

	FUNC0(&map->release, 1);
	FUNC2(&map->ioworker.register_work);

	FUNC8(dev, map->bytes);
	FUNC8(dev, (void *)map->ring);
	FUNC5(map->irq, map);

	FUNC4(map->sock);
	FUNC3(map);

	return 0;
}