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
struct socket {TYPE_1__* sk; } ;
struct sock_mapping {int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ sk_send_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  ENOTSOCK ; 
 struct sock_mapping* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* pvcalls_front_dev ; 

__attribute__((used)) static inline struct sock_mapping *FUNC4(struct socket *sock)
{
	struct sock_mapping *map;

	if (!pvcalls_front_dev ||
		FUNC2(&pvcalls_front_dev->dev) == NULL)
		return FUNC0(-ENOTCONN);

	map = (struct sock_mapping *)sock->sk->sk_send_head;
	if (map == NULL)
		return FUNC0(-ENOTSOCK);

	FUNC3();
	FUNC1(&map->refcount);
	return map;
}