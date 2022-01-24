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
struct usb_function_instance {int /*<<< orphan*/  group; int /*<<< orphan*/  free_func_inst; int /*<<< orphan*/  set_inst_name; } ;
struct ffs_dev {struct f_fs_opts* opts; } ;
struct f_fs_opts {struct usb_function_instance func_inst; struct ffs_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct usb_function_instance* FUNC0 (struct ffs_dev*) ; 
 struct usb_function_instance* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct ffs_dev*) ; 
 struct ffs_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ffs_free_inst ; 
 int /*<<< orphan*/  ffs_func_type ; 
 int /*<<< orphan*/  ffs_set_inst_name ; 
 int /*<<< orphan*/  FUNC7 (struct f_fs_opts*) ; 
 struct f_fs_opts* FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct usb_function_instance *FUNC9(void)
{
	struct f_fs_opts *opts;
	struct ffs_dev *dev;

	opts = FUNC8(sizeof(*opts), GFP_KERNEL);
	if (!opts)
		return FUNC1(-ENOMEM);

	opts->func_inst.set_inst_name = ffs_set_inst_name;
	opts->func_inst.free_func_inst = ffs_free_inst;
	FUNC5();
	dev = FUNC3();
	FUNC6();
	if (FUNC2(dev)) {
		FUNC7(opts);
		return FUNC0(dev);
	}
	opts->dev = dev;
	dev->opts = opts;

	FUNC4(&opts->func_inst.group, "",
				    &ffs_func_type);
	return &opts->func_inst;
}