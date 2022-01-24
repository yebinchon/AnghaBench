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
struct usbtmc_file_data {scalar_t__ in_urbs_used; int /*<<< orphan*/  err_lock; scalar_t__ out_transfer_size; scalar_t__ out_status; scalar_t__ in_transfer_size; scalar_t__ in_status; int /*<<< orphan*/  in_anchor; int /*<<< orphan*/  submitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usbtmc_file_data *file_data)
{
	FUNC2(&file_data->submitted);
	FUNC3(&file_data->in_anchor);
	FUNC0(&file_data->err_lock);
	file_data->in_status = 0;
	file_data->in_transfer_size = 0;
	file_data->out_status = 0;
	file_data->out_transfer_size = 0;
	FUNC1(&file_data->err_lock);

	file_data->in_urbs_used = 0;
	return 0;
}