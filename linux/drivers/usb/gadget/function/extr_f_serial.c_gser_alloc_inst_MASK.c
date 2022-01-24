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
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  free_func_inst; } ;
struct f_serial_opts {struct usb_function_instance func_inst; int /*<<< orphan*/  port_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct usb_function_instance* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gser_free_inst ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct f_serial_opts*) ; 
 struct f_serial_opts* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  serial_func_type ; 

__attribute__((used)) static struct usb_function_instance *FUNC5(void)
{
	struct f_serial_opts *opts;
	int ret;

	opts = FUNC4(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC0(-ENOMEM);

	opts->func_inst.free_func_inst = gser_free_inst;
	ret = FUNC2(&opts->port_num);
	if (ret) {
		FUNC3(opts);
		return FUNC0(ret);
	}
	FUNC1(&opts->func_inst.group, "",
				    &serial_func_type);

	return &opts->func_inst;
}