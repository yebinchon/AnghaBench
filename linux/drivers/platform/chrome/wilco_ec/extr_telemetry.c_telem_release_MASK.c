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
struct telem_session_data {TYPE_1__* dev_data; } ;
struct inode {int dummy; } ;
struct file {struct telem_session_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  available; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct telem_session_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct telem_session_data *sess_data = filp->private_data;

	FUNC0(&sess_data->dev_data->available, 1);
	FUNC2(&sess_data->dev_data->dev);
	FUNC1(sess_data);

	return 0;
}