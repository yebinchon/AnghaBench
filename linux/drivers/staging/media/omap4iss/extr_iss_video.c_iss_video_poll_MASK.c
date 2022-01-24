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
struct iss_video_fh {int /*<<< orphan*/  queue; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 struct iss_video_fh* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *file, poll_table *wait)
{
	struct iss_video_fh *vfh = FUNC0(file->private_data);

	return FUNC1(&vfh->queue, file, wait);
}