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
struct qtnf_bus {int /*<<< orphan*/  dbg_dir; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct dentry*) ; 
 struct dentry* FUNC1 () ; 

void FUNC2(struct qtnf_bus *bus, const char *name)
{
	struct dentry *parent = FUNC1();

	bus->dbg_dir = FUNC0(name, parent);
}