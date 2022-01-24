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
struct sock_mapping {int /*<<< orphan*/  irq; int /*<<< orphan*/  read; } ;
struct sock {struct sock_mapping* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sock *sock)
{
	struct sock_mapping *map = sock->sk_user_data;

	if (map == NULL)
		return;

	FUNC0(&map->read);
	FUNC1(map->irq);
}