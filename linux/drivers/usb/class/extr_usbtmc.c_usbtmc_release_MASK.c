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
struct usbtmc_file_data {TYPE_1__* data; int /*<<< orphan*/  file_elem; } ;
struct inode {int dummy; } ;
struct file {struct usbtmc_file_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbtmc_file_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbtmc_delete ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct usbtmc_file_data *file_data = file->private_data;

	/* prevent IO _AND_ usbtmc_interrupt */
	FUNC3(&file_data->data->io_mutex);
	FUNC5(&file_data->data->dev_lock);

	FUNC2(&file_data->file_elem);

	FUNC6(&file_data->data->dev_lock);
	FUNC4(&file_data->data->io_mutex);

	FUNC1(&file_data->data->kref, usbtmc_delete);
	file_data->data = NULL;
	FUNC0(file_data);
	return 0;
}