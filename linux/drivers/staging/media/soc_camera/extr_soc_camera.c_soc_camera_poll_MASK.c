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
struct soc_camera_host {int /*<<< orphan*/  host_lock; TYPE_1__* ops; } ;
struct soc_camera_device {struct file* streamer; int /*<<< orphan*/  parent; } ;
struct file {struct soc_camera_device* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* poll ) (struct file*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *) ; 
 struct soc_camera_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, poll_table *pt)
{
	struct soc_camera_device *icd = file->private_data;
	struct soc_camera_host *ici = FUNC3(icd->parent);
	__poll_t res = EPOLLERR;

	if (icd->streamer != file)
		return EPOLLERR;

	FUNC0(&ici->host_lock);
	res = ici->ops->poll(file, pt);
	FUNC1(&ici->host_lock);
	return res;
}