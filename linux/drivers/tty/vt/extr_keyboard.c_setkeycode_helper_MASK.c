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
struct input_handle {int /*<<< orphan*/  dev; } ;
struct getset_keycode_data {scalar_t__ error; int /*<<< orphan*/  ke; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct input_handle *handle, void *data)
{
	struct getset_keycode_data *d = data;

	d->error = FUNC0(handle->dev, &d->ke);

	return d->error == 0; /* stop as soon as we successfully set one */
}