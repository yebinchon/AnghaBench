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
struct usbtmc_file_data {int /*<<< orphan*/  err_lock; scalar_t__ out_transfer_size; scalar_t__ out_status; scalar_t__ in_urbs_used; scalar_t__ in_transfer_size; scalar_t__ in_status; struct usbtmc_device_data* data; int /*<<< orphan*/  closing; } ;
struct usbtmc_device_data {int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  waitq; } ;
struct file {struct usbtmc_file_data* private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usbtmc_file_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct file *file, fl_owner_t id)
{
	struct usbtmc_file_data *file_data;
	struct usbtmc_device_data *data;

	file_data = file->private_data;
	if (file_data == NULL)
		return -ENODEV;

	FUNC0(&file_data->closing, 1);
	data = file_data->data;

	/* wait for io to stop */
	FUNC1(&data->io_mutex);

	FUNC5(file_data);

	FUNC3(&file_data->err_lock);
	file_data->in_status = 0;
	file_data->in_transfer_size = 0;
	file_data->in_urbs_used = 0;
	file_data->out_status = 0;
	file_data->out_transfer_size = 0;
	FUNC4(&file_data->err_lock);

	FUNC6(&data->waitq);
	FUNC2(&data->io_mutex);

	return 0;
}