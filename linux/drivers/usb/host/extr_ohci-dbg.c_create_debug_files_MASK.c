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
struct usb_bus {int /*<<< orphan*/  bus_name; } ;
struct ohci_hcd {struct dentry* debug_dir; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct usb_bus self; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IRUGO ; 
 int /*<<< orphan*/  debug_async_fops ; 
 int /*<<< orphan*/  debug_periodic_fops ; 
 int /*<<< orphan*/  debug_registers_fops ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct dentry*,struct ohci_hcd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,char*) ; 
 int /*<<< orphan*/  ohci_debug_root ; 
 TYPE_1__* FUNC3 (struct ohci_hcd*) ; 

__attribute__((used)) static inline void FUNC4 (struct ohci_hcd *ohci)
{
	struct usb_bus *bus = &FUNC3(ohci)->self;
	struct dentry *root;

	root = FUNC0(bus->bus_name, ohci_debug_root);
	ohci->debug_dir = root;

	FUNC1("async", S_IRUGO, root, ohci, &debug_async_fops);
	FUNC1("periodic", S_IRUGO, root, ohci,
			    &debug_periodic_fops);
	FUNC1("registers", S_IRUGO, root, ohci,
			    &debug_registers_fops);

	FUNC2 (ohci, "created debug files\n");
}