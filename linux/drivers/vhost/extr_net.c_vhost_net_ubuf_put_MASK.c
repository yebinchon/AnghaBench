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
struct vhost_net_ubuf_ref {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vhost_net_ubuf_ref *ubufs)
{
	int r = FUNC0(1, &ubufs->refcount);
	if (FUNC1(!r))
		FUNC2(&ubufs->wait);
	return r;
}