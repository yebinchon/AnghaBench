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
struct vhost_dev {int dummy; } ;
struct vhost_attach_cgroups_struct {int ret; int /*<<< orphan*/  work; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  vhost_attach_cgroups_work ; 
 int /*<<< orphan*/  FUNC0 (struct vhost_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vhost_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct vhost_dev *dev)
{
	struct vhost_attach_cgroups_struct attach;

	attach.owner = current;
	FUNC1(&attach.work, vhost_attach_cgroups_work);
	FUNC2(dev, &attach.work);
	FUNC0(dev, &attach.work);
	return attach.ret;
}