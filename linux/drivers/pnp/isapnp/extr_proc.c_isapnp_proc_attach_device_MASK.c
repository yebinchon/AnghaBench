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
struct proc_dir_entry {int dummy; } ;
struct pnp_dev {int number; struct proc_dir_entry* procent; struct pnp_card* card; } ;
struct pnp_card {int number; struct proc_dir_entry* procdir; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int /*<<< orphan*/  isapnp_proc_bus_dir ; 
 int /*<<< orphan*/  isapnp_proc_bus_file_operations ; 
 struct proc_dir_entry* FUNC0 (char*,int,struct proc_dir_entry*,int /*<<< orphan*/ *,struct pnp_dev*) ; 
 struct proc_dir_entry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct pnp_dev *dev)
{
	struct pnp_card *bus = dev->card;
	struct proc_dir_entry *de, *e;
	char name[16];

	if (!(de = bus->procdir)) {
		FUNC3(name, "%02x", bus->number);
		de = bus->procdir = FUNC1(name, isapnp_proc_bus_dir);
		if (!de)
			return -ENOMEM;
	}
	FUNC3(name, "%02x", dev->number);
	e = dev->procent = FUNC0(name, S_IFREG | S_IRUGO, de,
			&isapnp_proc_bus_file_operations, dev);
	if (!e)
		return -ENOMEM;
	FUNC2(e, 256);
	return 0;
}