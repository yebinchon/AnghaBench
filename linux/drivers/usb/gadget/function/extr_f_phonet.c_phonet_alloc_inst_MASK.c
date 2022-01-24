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
struct net_device {int dummy; } ;
struct f_phonet_opts {struct usb_function_instance func_inst; struct net_device* net; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (struct net_device*) ; 
 struct usb_function_instance* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct f_phonet_opts*) ; 
 struct f_phonet_opts* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phonet_free_inst ; 
 int /*<<< orphan*/  phonet_func_type ; 

__attribute__((used)) static struct usb_function_instance *FUNC7(void)
{
	struct f_phonet_opts *opts;

	opts = FUNC6(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC1(-ENOMEM);

	opts->func_inst.free_func_inst = phonet_free_inst;
	opts->net = FUNC4();
	if (FUNC2(opts->net)) {
		struct net_device *net = opts->net;
		FUNC5(opts);
		return FUNC0(net);
	}

	FUNC3(&opts->func_inst.group, "",
			&phonet_func_type);

	return &opts->func_inst;
}