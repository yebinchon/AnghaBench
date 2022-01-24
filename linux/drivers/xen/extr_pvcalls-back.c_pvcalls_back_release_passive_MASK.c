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
struct xenbus_device {int dummy; } ;
struct sockpass_mapping {int /*<<< orphan*/  wq; TYPE_2__* sock; int /*<<< orphan*/  saved_data_ready; } ;
struct pvcalls_fedata {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk_callback_lock; int /*<<< orphan*/  sk_data_ready; int /*<<< orphan*/ * sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockpass_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct xenbus_device *dev,
					struct pvcalls_fedata *fedata,
					struct sockpass_mapping *mappass)
{
	if (mappass->sock->sk != NULL) {
		FUNC4(&mappass->sock->sk->sk_callback_lock);
		mappass->sock->sk->sk_user_data = NULL;
		mappass->sock->sk->sk_data_ready = mappass->saved_data_ready;
		FUNC5(&mappass->sock->sk->sk_callback_lock);
	}
	FUNC3(mappass->sock);
	FUNC1(mappass->wq);
	FUNC0(mappass->wq);
	FUNC2(mappass);

	return 0;
}