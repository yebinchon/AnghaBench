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
struct dwc3_ep {int /*<<< orphan*/  name; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3_ep*,struct dentry*) ; 

__attribute__((used)) static void FUNC2(struct dwc3_ep *dep,
		struct dentry *parent)
{
	struct dentry		*dir;

	dir = FUNC0(dep->name, parent);
	FUNC1(dep, dir);
}