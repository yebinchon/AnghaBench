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
struct usbtmc_device_data {int /*<<< orphan*/  kref; int /*<<< orphan*/ * iin_urb; int /*<<< orphan*/ * iin_buffer; int /*<<< orphan*/  iin_ep_present; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbtmc_delete ; 

__attribute__((used)) static void FUNC4(struct usbtmc_device_data *data)
{
	if (!data->iin_ep_present || !data->iin_urb)
		return;
	FUNC3(data->iin_urb);
	FUNC0(data->iin_buffer);
	data->iin_buffer = NULL;
	FUNC2(data->iin_urb);
	data->iin_urb = NULL;
	FUNC1(&data->kref, usbtmc_delete);
}