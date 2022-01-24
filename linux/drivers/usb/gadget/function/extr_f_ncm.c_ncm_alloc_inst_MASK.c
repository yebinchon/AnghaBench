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
struct usb_os_desc {int /*<<< orphan*/  ext_prop; int /*<<< orphan*/  ext_compat_id; } ;
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  (* free_func_inst ) (struct usb_function_instance*) ;} ;
struct net_device {int dummy; } ;
struct f_ncm_opts {struct usb_function_instance func_inst; struct net_device* ncm_interf_group; struct usb_os_desc ncm_os_desc; struct net_device* net; int /*<<< orphan*/  lock; int /*<<< orphan*/  ncm_ext_compat_id; } ;
typedef  struct net_device config_group ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (struct net_device*) ; 
 struct usb_function_instance* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct f_ncm_opts*) ; 
 struct f_ncm_opts* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_function_instance*) ; 
 int /*<<< orphan*/  ncm_func_type ; 
 struct net_device* FUNC10 (int /*<<< orphan*/ *,int,struct usb_os_desc**,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_function_instance *FUNC11(void)
{
	struct f_ncm_opts *opts;
	struct usb_os_desc *descs[1];
	char *names[1];
	struct config_group *ncm_interf_group;

	opts = FUNC7(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC1(-ENOMEM);
	opts->ncm_os_desc.ext_compat_id = opts->ncm_ext_compat_id;

	FUNC8(&opts->lock);
	opts->func_inst.free_func_inst = ncm_free_inst;
	opts->net = FUNC5();
	if (FUNC3(opts->net)) {
		struct net_device *net = opts->net;
		FUNC6(opts);
		return FUNC0(net);
	}
	FUNC2(&opts->ncm_os_desc.ext_prop);

	descs[0] = &opts->ncm_os_desc;
	names[0] = "ncm";

	FUNC4(&opts->func_inst.group, "", &ncm_func_type);
	ncm_interf_group =
		FUNC10(&opts->func_inst.group, 1, descs,
					       names, THIS_MODULE);
	if (FUNC3(ncm_interf_group)) {
		FUNC9(&opts->func_inst);
		return FUNC0(ncm_interf_group);
	}
	opts->ncm_interf_group = ncm_interf_group;

	return &opts->func_inst;
}