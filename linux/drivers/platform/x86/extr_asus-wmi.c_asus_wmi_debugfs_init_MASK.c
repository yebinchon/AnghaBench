#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct asus_wmi_debugfs_node {int /*<<< orphan*/  name; struct asus_wmi* asus; } ;
struct TYPE_4__ {int /*<<< orphan*/  root; int /*<<< orphan*/  ctrl_param; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  method_id; } ;
struct asus_wmi {TYPE_2__ debug; TYPE_1__* driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct asus_wmi_debugfs_node*) ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 struct asus_wmi_debugfs_node* asus_wmi_debug_files ; 
 int /*<<< orphan*/  asus_wmi_debugfs_io_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct asus_wmi_debugfs_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct asus_wmi *asus)
{
	int i;

	asus->debug.root = FUNC1(asus->driver->name, NULL);

	FUNC3("method_id", S_IRUGO | S_IWUSR, asus->debug.root,
			   &asus->debug.method_id);

	FUNC3("dev_id", S_IRUGO | S_IWUSR, asus->debug.root,
			   &asus->debug.dev_id);

	FUNC3("ctrl_param", S_IRUGO | S_IWUSR, asus->debug.root,
			   &asus->debug.ctrl_param);

	for (i = 0; i < FUNC0(asus_wmi_debug_files); i++) {
		struct asus_wmi_debugfs_node *node = &asus_wmi_debug_files[i];

		node->asus = asus;
		FUNC2(node->name, S_IFREG | S_IRUGO,
				    asus->debug.root, node,
				    &asus_wmi_debugfs_io_ops);
	}
}