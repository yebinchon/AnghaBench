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
struct socket {int dummy; } ;
struct sock_mapping {scalar_t__ active_socket; } ;
struct pvcalls_bedata {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLNVAL ; 
 scalar_t__ FUNC0 (struct sock_mapping*) ; 
 struct pvcalls_bedata* FUNC1 (int /*<<< orphan*/ *) ; 
 struct sock_mapping* FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 TYPE_1__* pvcalls_front_dev ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct pvcalls_bedata*,struct sock_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct pvcalls_bedata*,struct sock_mapping*,int /*<<< orphan*/ *) ; 

__poll_t FUNC6(struct file *file, struct socket *sock,
			       poll_table *wait)
{
	struct pvcalls_bedata *bedata;
	struct sock_mapping *map;
	__poll_t ret;

	map = FUNC2(sock);
	if (FUNC0(map))
		return EPOLLNVAL;
	bedata = FUNC1(&pvcalls_front_dev->dev);

	if (map->active_socket)
		ret = FUNC4(file, bedata, map, wait);
	else
		ret = FUNC5(file, bedata, map, wait);
	FUNC3(sock);
	return ret;
}